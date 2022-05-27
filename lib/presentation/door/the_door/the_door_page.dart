import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ead_app/application/door/watch_door/watch_door_bloc.dart';
import 'package:ead_app/application/notifications/answer_notification/answer_notification_bloc.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/door/the_door/the_door_body.dart';
import 'package:ead_app/presentation/widgets/loading_screen_widget.dart';

class TheDoorPage extends HookWidget {
  const TheDoorPage({this.notification, Key? key}) : super(key: key);

  final Notification? notification;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isSirenOn = useState(false);
    final ValueNotifier<bool> isDoorOpen = useState(false);
    final Color color =
        isDoorOpen.value ? context.warningColor : context.scaffoldColor;

    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<WatchDoorBloc>()
              ..add(const WatchDoorEvent.watchStarted()),
          ),
          BlocProvider(
            create: (context) => getIt<AnswerNotificationBloc>(),
          ),
        ],
        child: BlocConsumer<WatchDoorBloc, WatchDoorState>(
          listener: (context, state) {
            if (state is LoadSuccess) {
              isDoorOpen.value = state.door.isOpened;
              isSirenOn.value = state.door.isSirenOn;

              if (notification != null) {
                if (isDoorOpen.value) {
                  FlushbarHelper.createInformation(
                    title: "The door has opened",
                    message: "You have to manually close it",
                    duration: const Duration(seconds: 5),
                  ).show(context);
                }

                if (isSirenOn.value) {
                  FlushbarHelper.createInformation(
                    title: "The siren is on",
                    message: "It will be turned off automatically soon",
                    duration: const Duration(seconds: 5),
                  ).show(context);
                }

                Future.delayed(const Duration(seconds: 8)).then((_) {
                  context.read<AnswerNotificationBloc>().state.maybeMap(
                        success: (ss) {
                          context.router.replaceAll([
                            const BaseRoute(
                              children: [NotificationsHistoryRoute()],
                            ),
                            NotificationRoute(notification: ss.notification),
                          ]);
                        },
                        orElse: () => null,
                      );
                });
              }
            }
          },
          builder: (context, states) {
            return states.map(
              initial: (_) => Container(),
              loadInProgress: (_) => LoadingScreenWidget(
                actualScreen: TheDoorBody(color, isDoorOpen, isSirenOn),
              ),
              loadSuccess: (_) =>
                  TheDoorBody(color, isDoorOpen, isSirenOn, notification),
              loadFailure: (_) => Center(
                child: Text(
                  "Some failure",
                  style: context.errorStyle.copyWith(fontSize: 32),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
