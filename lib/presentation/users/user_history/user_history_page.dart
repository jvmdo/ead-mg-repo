import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/notifications/user_notifications/user_notifications_bloc.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/date_time_x.dart';
import 'package:ead_app/presentation/core/string_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/avatar_widget.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/divider_widget.dart';
import 'package:ead_app/presentation/widgets/grid_widget.dart';
import 'package:ead_app/presentation/widgets/icons/block_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/trash_icon_widget.dart';

class UserHistoryPage extends StatelessWidget {
  const UserHistoryPage({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        leading: BackButtonWidget(
          backRoute: () => context.router.pop(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 493,
            automaticallyImplyLeading: false,
            flexibleSpace: FlexibleSpaceBar(
              background: UserHistoryInfo(context, user),
            ),
          ),
          BlocProvider(
            create: (context) => getIt<GetNotificationsBloc>()
              ..add(GetNotificationsEvent.started(user.name)),
            child: BlocBuilder<GetNotificationsBloc, GetNotificationsState>(
              builder: (context, states) {
                return states.map(
                  initial: (_) => SliverToBoxAdapter(
                    child: Container(),
                  ),
                  loadInProgress: (_) {
                    return SliverToBoxAdapter(
                      child: Column(
                        children: const [
                          SizedBox(height: 640),
                          LinearProgressIndicator(),
                        ],
                      ),
                    );
                  },
                  loadSuccess: (state) {
                    return sliverList(state.notifications);
                  },
                  loadFailure: (_) {
                    return SliverToBoxAdapter(
                      child: Center(
                        child: Text(
                          "Something went wrong",
                          style: context.errorStyle.copyWith(fontSize: 32),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  SliverPadding sliverList(List<Notification> notifications) {
    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 4.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            // TODO: maybe onTap redirects to notification receipt
            return PersonalHistoryCard(
              historyData: notifications[index],
            );
          },
          childCount: notifications.length,
        ),
      ),
    );
  }
}

class UserHistoryInfo extends StatelessWidget {
  const UserHistoryInfo(
    this.context,
    this.user, {
    Key? key,
  }) : super(key: key);

  final User user;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: context.headerColor,
              height: 129,
            ),
            BackgroundWidget(
              height: 444,
              isRounded: false,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      user.name.getOrCrash(),
                      style: context.headline1,
                    ),
                    Text(
                      user.type.getOrCrash().inCaps,
                      style: context.headline3.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const DividerWidget(),
                    GridWidget(
                      children: [
                        RowData(
                          description: "Status",
                          data: user.status,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        RowData(
                          description: "Since",
                          data: user.createdAt.getOrCrash().getDateString(),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        RowData(
                          description: "Added by",
                          data: user.addedBy.getOrCrash().itself,
                        )
                      ],
                    ),
                    const DividerWidget(
                      height: 32,
                    ),
                    ButtonWidget(
                      name: "Remove",
                      icon: const TrashIconWidget(),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ButtonWidget(
                      name: "Block",
                      icon: const BlockIconWidget(),
                      onPressed: () {},
                    ),
                    const DividerWidget(
                      height: 32,
                    ),
                    Text(
                      "Personal history",
                      style: context.headline2.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 54,
          left: 128,
          child: AvatarWidget(
            radius: 75,
            imageUrl: user.profilePicture.getOrCrash(),
          ),
        ),
      ],
    );
  }
}

class PersonalHistoryCard extends StatelessWidget {
  const PersonalHistoryCard({
    Key? key,
    required this.historyData,
  }) : super(key: key);

  final Notification historyData;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 411,
      height: 54,
      color: context.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 4.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  historyData.datetime.getOrCrash().getWeekdayString(),
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  '${historyData.datetime.getOrCrash().getHourString()} ${historyData.datetime.getOrCrash().getDateString()}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                Icon(
                  historyData.answer.getOrCrash() != ''
                      ? Icons.check
                      : Icons.close_rounded,
                  size: 32,
                  color: context.backgroundColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
