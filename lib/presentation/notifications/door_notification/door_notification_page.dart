import 'package:auto_route/auto_route.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ead_app/application/notifications/answer_notification/answer_notification_bloc.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/notifications/door_notification/door_notification_body.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/loading_screen_widget.dart';

class DoorNotificationPage extends HookWidget {
  const DoorNotificationPage({
    required this.notification,
    Key? key,
  }) : super(key: key);

  final Notification notification;

  @override
  Widget build(BuildContext context) {
    final isKnown = notification.recognized;
    final color = isKnown ? context.scaffoldColor : context.warningColor;
    final doorNotificationBody = DoorNotificationBody(
      color: color,
      notification: notification,
      isKnown: isKnown,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Door Notification"),
        leading: BackButtonWidget(
          backRoute: () => context.router.navigate(
            const BaseRoute(
              children: [NotificationsHistoryRoute()],
            ),
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<AnswerNotificationBloc>(),
        child: BlocBuilder<AnswerNotificationBloc, AnswerNotificationState>(
          builder: (context, states) {
            return states.map(
              initial: (_) => doorNotificationBody,
              loading: (_) => LoadingScreenWidget(
                actualScreen: doorNotificationBody,
              ),
              success: (state) {
                context.router.replace(
                  NotificationRoute(notification: state.notification),
                );
                return Container();
              },
              failure: (_) {
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
      ),
    );
  }
}
