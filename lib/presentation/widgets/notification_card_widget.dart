import 'package:auto_route/auto_route.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart' hide Notification;
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/date_time_x.dart';
import 'package:ead_app/presentation/core/string_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/widgets/avatar_widget.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({
    Key? key,
    required this.notification,
  }) : super(key: key);

  final Notification notification;

  @override
  Widget build(BuildContext context) {
    final properRouter = chooseRoute();
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        child: InkWell(
          onTap: () => context.router.push(properRouter),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 280,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AvatarWidget(
                        radius: 32.0,
                        imageUrl: notification.picture.getOrCrash(),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notification.name.getOrCrash().inCaps,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          notification.datetime.getOrCrash().getWeekdayString(),
                        ),
                        Text(
                          '${notification.datetime.getOrCrash().getHourString()} ${notification.datetime.getOrCrash().getDateString()}',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                notification.answer.getOrCrash() != ''
                    ? Icons.check_rounded
                    : Icons.priority_high,
                size: 48.0,
                color: context.backgroundColor,
              ),
              const SizedBox(width: 4),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                child: Container(
                  width: 12.0,
                  height: 80.0,
                  color: notification.recognized
                      ? Colors.transparent
                      : context.warningColor.withAlpha(222),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PageRouteInfo chooseRoute() {
    // if the notification has already been answered
    if (notification.answer.getOrCrash() != '') {
      return NotificationRoute(notification: notification);
    }

    return DoorNotificationRoute(notification: notification);
  }
}
