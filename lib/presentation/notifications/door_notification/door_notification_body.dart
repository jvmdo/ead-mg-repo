import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/notifications/answer_notification/answer_notification_bloc.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/presentation/core/date_time_x.dart';
import 'package:ead_app/presentation/core/string_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/widgets/avatar_widget.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/grid_widget.dart';
import 'package:ead_app/presentation/widgets/icons/arrow_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/door_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/minimize_icon_widget.dart';

class DoorNotificationBody extends StatelessWidget {
  const DoorNotificationBody({
    Key? key,
    required this.color,
    required this.notification,
    required this.isKnown,
  }) : super(key: key);

  final Color color;
  final Notification notification;
  final bool isKnown;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 400,
              width: 412,
              color: color,
            ),
            Positioned(
              top: 72.0,
              left: 45.7,
              child: AvatarWidget(
                radius: 160.0,
                imageUrl: notification.picture.getOrCrash(),
              ),
            ),
          ],
        ),
        BackgroundWidget(
          isRounded: false,
          height: 374.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isKnown
                      ? "A person stepped in\nyour house"
                      : "A person is standing in\nfront of your door",
                  style: context.headline2.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                GridWidget(
                  children: [
                    RowData(
                      description: "Name",
                      data: notification.name.getOrCrash().inCaps,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    RowData(
                      description: "When",
                      data:
                          "${notification.datetime.getOrCrash().getWeekdayString()}, ${notification.datetime.getOrCrash().getHourString()}",
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    RowData(
                      description: "Date",
                      data: notification.datetime.getOrCrash().getDateString(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  isKnown
                      ? "Do you really know\nthis person?"
                      : "What do you want to do?",
                  style: context.headline2.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Opacity(
                  opacity: 0.5,
                  child: ButtonWidget(
                    name: isKnown ? "No, go to door" : "Ignore",
                    icon: isKnown
                        ? const DoorIconWidget()
                        : const MinimizeIconWidget(),
                    onPressed: () {
                      if (isKnown) {
                        // go to door
                        context.router.push(
                          BaseRoute(
                            children: [
                              TheDoorRoute(notification: notification)
                            ],
                          ),
                        );
                      } else {
                        // answer notification as ignore
                        context.read<AnswerNotificationBloc>().add(
                              AnswerNotificationEvent.ignorePressed(
                                notification.id,
                              ),
                            );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                ButtonWidget(
                  name: isKnown ? "Yes, all right" : "Go to door",
                  isDoorOpen: !isKnown,
                  icon: isKnown
                      ? const ArrowIconWidget()
                      : const DoorIconWidget(),
                  onPressed: () {
                    if (isKnown) {
                      // answer notification as ok
                      context.read<AnswerNotificationBloc>().add(
                            AnswerNotificationEvent.allRightPressed(
                              notification.id,
                            ),
                          );
                    } else {
                      // go to door
                      context.router.push(
                        BaseRoute(
                          children: [TheDoorRoute(notification: notification)],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
