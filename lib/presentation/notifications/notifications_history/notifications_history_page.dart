import 'dart:async';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:ead_app/application/notifications/notifications_history/notifications_history_bloc.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/presentation/core/app_notification.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/chip_widget.dart';
import 'package:ead_app/presentation/widgets/dismiss_keyboard_widget.dart';
import 'package:ead_app/presentation/widgets/divider_widget.dart';
import 'package:ead_app/presentation/widgets/icons/calendar_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/sort_icon_widget.dart';
import 'package:ead_app/presentation/widgets/loading_screen_widget.dart';
import 'package:ead_app/presentation/widgets/notification_card_widget.dart';

class NotificationsHistoryPage extends StatefulWidget {
  const NotificationsHistoryPage({Key? key}) : super(key: key);

  @override
  _NotificationsHistoryPageState createState() =>
      _NotificationsHistoryPageState();
}

class _NotificationsHistoryPageState extends State<NotificationsHistoryPage> {
  // The currently searched-for term
  String? selectedTerm;

  // The search result by the [selectedTerm]
  List<NotificationCardWidget>? filteredNotifications;

  // All the notifications history returned from repository
  // late final List<NotificationCardWidget> _notificationsHistory;

  // The search bar controller
  late final FloatingSearchBarController controller;

  List<NotificationCardWidget> _notificationsToCards(
    List<Notification> notifications,
  ) {
    return notifications
        .map((n) => NotificationCardWidget(notification: n))
        .toList();
  }

  StreamSubscription<ReceivedAction>? _notificationStream;

  @override
  void initState() {
    super.initState();
    controller = FloatingSearchBarController();
    // controller.query = "";

    AppNotification.showRequestPermissionsDialog(context);

    //* talvez tirar esse cancel, fazer o subscription como late final
    //* e fazer cancel no override dispose
    _notificationStream?.cancel();
    _notificationStream = AppNotification.listen(context);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardWidget(
      child: Scaffold(
        body: Container(
          color: context.backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            children: [
              const SizedBox(height: 72),
              SizedBox(
                height: 60.0,
                child: FloatingSearchBar(
                  height: 54.0,
                  elevation: 0.0,
                  autocorrect: false,
                  controller: controller,
                  iconColor: context.highlightColor,
                  backgroundColor: context.inputColor,
                  borderRadius: BorderRadius.circular(15.0),
                  backdropColor: Colors.transparent,
                  automaticallyImplyBackButton: false,
                  automaticallyImplyDrawerHamburger: false,
                  title: Text(
                    selectedTerm ?? 'Search by name or date',
                    style: _textSearchStyle(context),
                  ),
                  hint: 'Search by name or date',
                  hintStyle: _textHintStyle(context),
                  queryStyle: context.queryStyle,
                  leadingActions: [
                    FloatingSearchBarAction.searchToClear(size: 25),
                  ],
                  actions: [
                    FloatingSearchBarAction.icon(
                      icon: const CalendarIconWidget(),
                      onTap: () {},
                    ),
                    if (selectedTerm == null)
                      Container()
                    else ...[
                      FloatingSearchBarAction.icon(
                        icon: const Icon(Icons.refresh),
                        onTap: () {
                          setState(() {
                            selectedTerm = null;
                            _filterByName(context);
                          });
                        },
                      ),
                    ],
                  ],
                  debounceDelay: const Duration(milliseconds: 250),
                  onQueryChanged: (query) {
                    setState(() {
                      if (query != "") {
                        selectedTerm = query;
                        _filterByName(context, name: query);
                      }
                    });
                  },
                  onSubmitted: (query) {
                    setState(() {
                      if (query != "") {
                        selectedTerm = query;
                      } else {
                        selectedTerm = null;
                      }
                    });
                    controller.close();
                    _filterByName(context, name: selectedTerm);
                  },
                  onFocusChanged: (_) {
                    setState(() {
                      if (selectedTerm != null) {
                        controller.query = selectedTerm!;
                      }
                    });
                  },
                  builder: (_, __) => Container(),
                ),
              ),
              SizedBox(
                height: 50,
                width: 370,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChipWidget(
                      description: "unknown",
                      onTap: () {
                        setState(() {
                          selectedTerm = "unknown";
                          _filterByName(context, name: selectedTerm);
                        });
                      },
                    ),
                    ChipWidget(
                      description: "no answer",
                      onTap: () {
                        setState(() {
                          selectedTerm = "Displaying only non-answered";
                          _filterByAnswer(context);
                        });
                      },
                    ),
                    ChipWidget(
                      description: "sort by",
                      icon: const SortIconWidget(),
                      onTap: () {
                        setState(() {
                          filteredNotifications =
                              filteredNotifications!.reversed.toList();
                        });
                      },
                    ),
                  ],
                ),
              ),
              const DividerWidget(height: 0),
              const SizedBox(height: 12),
              BlocBuilder<NotificationsHistoryBloc, NotificationsHistoryState>(
                builder: (context, states) {
                  return states.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) {
                      return Expanded(
                        child: LoadingScreenWidget(
                          actualScreen: Container(),
                        ),
                      );
                    },
                    loadSuccess: (state) {
                      filteredNotifications =
                          _notificationsToCards(state.notifications);

                      return Expanded(
                        child: SearchResultsListView(
                          searchTerm: selectedTerm,
                          filteredNotifications: filteredNotifications ?? [],
                        ),
                      );
                    },
                    loadFailure: (_) {
                      return Center(
                        child: Text(
                          "Something\nbad has occurred",
                          textAlign: TextAlign.center,
                          style: context.errorStyle.copyWith(
                            fontSize: 48,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _filterByName(
    BuildContext context, {
    String? name,
  }) {
    final bloc = context.read<NotificationsHistoryBloc>();
    bloc.add(NotificationsHistoryEvent.queryNotificationsByName(name));
  }

  void _filterByAnswer(
    BuildContext context, {
    String answer = '',
  }) {
    final bloc = context.read<NotificationsHistoryBloc>();
    bloc.add(NotificationsHistoryEvent.queryNotificationsByAnswer(answer));
  }

  TextStyle _textHintStyle(BuildContext context) {
    return context.inputStyle.copyWith(
      fontWeight: FontWeight.w300,
      color: context.highlightColor.withAlpha(145),
    );
  }

  TextStyle _textSearchStyle(BuildContext context) {
    return context.inputStyle.copyWith(
      fontWeight: selectedTerm != null ? FontWeight.w400 : FontWeight.w300,
      color: selectedTerm != null
          ? context.highlightColor
          : context.highlightColor.withAlpha(145),
    );
  }
}

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({
    required this.filteredNotifications,
    this.searchTerm,
    Key? key,
  }) : super(key: key);

  final List<NotificationCardWidget> filteredNotifications;
  final String? searchTerm;

  @override
  Widget build(BuildContext context) {
    // no notification found
    if (filteredNotifications.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "No notification found\nfor the searched term:",
            textAlign: TextAlign.center,
            style: context.headline2,
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            searchTerm ?? "",
            style: context.headline2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Icon(
            Icons.search_off,
            size: 64,
          ),
        ],
      );
    }

    // display filtered (or all) notifications
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        itemCount: filteredNotifications.length,
        itemBuilder: (context, index) {
          return filteredNotifications[index];
        },
      ),
    );
  }
}
