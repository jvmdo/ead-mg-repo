import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/door/watch_door/watch_door_bloc.dart';
import 'package:ead_app/application/notifications/answer_notification/answer_notification_bloc.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/background_widget.dart';
import 'package:ead_app/presentation/widgets/button_widget.dart';
import 'package:ead_app/presentation/widgets/icons/lock_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/siren_icon_widget.dart';
import 'package:ead_app/presentation/widgets/icons/unlock_icon_widget.dart';

class TheDoorBody extends StatelessWidget {
  const TheDoorBody(
    this.color,
    this.isDoorOpen,
    this.isSirenOn, [
    this.notification,
    Key? key,
  ]) : super(key: key);

  final Color color;
  final ValueNotifier<bool> isDoorOpen;
  final ValueNotifier<bool> isSirenOn;
  final Notification? notification;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 412,
          color: color,
        ),
        Container(
          height: 289,
          width: 412,
          color: color,
          child: Container(
            margin: const EdgeInsets.all(45),
            decoration: BoxDecoration(
              color: context.backgroundColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                isDoorOpen.value ? "OPENED" : "LOCKED",
                style: context.headline1,
              ),
            ),
          ),
        ),
        BackgroundWidget(
          isRounded: false,
          height: 361.5,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 48.0,
              horizontal: 28.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Peform an action to open or\n"
                  "close the door. You can also\n"
                  "set the siren on!",
                  style: context.headline3,
                ),
                const SizedBox(
                  height: 52.0,
                ),
                ButtonWidget(
                  name: "Alarm",
                  icon: const SirenIconWidget(),
                  disable: isSirenOn.value,
                  onPressed: () {
                    // check if there is a notification to be answered
                    if (notification != null) {
                      // if true, answer as alarm
                      context.read<AnswerNotificationBloc>().add(
                            AnswerNotificationEvent.alarmPressed(
                              notification!.id,
                            ),
                          );
                    }

                    return context
                        .read<WatchDoorBloc>()
                        .add(const WatchDoorEvent.alarmPressed());
                  },
                ),
                if (isSirenOn.value) ...[
                  Text(
                    "The siren is on!",
                    style: context.errorStyle,
                  ),
                ],
                const SizedBox(
                  height: 44.0,
                ),
                ButtonWidget(
                  name: isDoorOpen.value ? "Close" : "Open",
                  icon: isDoorOpen.value
                      ? const UnlockIconWidget()
                      : const LockIconWidget(),
                  isDoorOpen: isDoorOpen.value,
                  onPressed: () {
                    if (isDoorOpen.value) {
                      return context
                          .read<WatchDoorBloc>()
                          .add(const WatchDoorEvent.closePressed());
                    } else {
                      // check if there is a notification to be answered
                      if (notification != null) {
                        // if true, answer as open
                        context.read<AnswerNotificationBloc>().add(
                              AnswerNotificationEvent.openPressed(
                                notification!.id,
                              ),
                            );
                      }

                      return context
                          .read<WatchDoorBloc>()
                          .add(const WatchDoorEvent.openPressed());
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
