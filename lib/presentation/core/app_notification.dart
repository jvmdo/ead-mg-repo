// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:async';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:ead_app/application/notifications/answer_notification/answer_notification_bloc.dart';
import 'package:ead_app/infrastructure/notifications/notification_dtos.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';

class AppNotification {
  static const String channelKey = "big_picture";
  static const String channelName = "Door Notifications";
  static const Color defaultColor = Color.fromARGB(255, 20, 76, 89);
  static const String actionIgnore = "IGNORE";
  static const String actionToDoor = "DOOR";
  static const String channelDescription =
      "This channel displays the door notifications with the name of the " +
          "person, his/her picture and two actions buttons.";
  static final List<NotificationChannel> _channel = [
    NotificationChannel(
      channelKey: channelKey,
      channelName: channelName,
      channelDescription: channelDescription,
      channelShowBadge: true,
      importance: NotificationImportance.Max,
      defaultColor: defaultColor,
      vibrationPattern: mediumVibrationPattern,
      playSound: true,
      soundSource: "resource://raw/res_door_notification",
    ),
  ];

  static Future<void> initialize() async {
    AwesomeNotifications().initialize(
      "resource://drawable/res_ead_app_logo",
      _channel,
    );
  }

  static void showRequestPermissionsDialog(BuildContext context) {
    AwesomeNotifications().isNotificationAllowed().then(
      (isAllowed) {
        if (!isAllowed) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Allow Door Notifications'),
              content: Text(
                'EAD App would like to send you notifications about your door',
                style: context.headline3,
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "Don't Allow",
                    style: context.inputStyle.copyWith(
                      color: context.inputStyle.color!.withAlpha(100),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then((_) => Navigator.pop(context)),
                  child: Text(
                    'Allow',
                    style: context.inputStyle,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  static StreamSubscription<ReceivedAction> listen(BuildContext context) {
    return AwesomeNotifications().actionStream.listen(
      (receivedNotification) async {
        final payload = receivedNotification.payload ?? {};
        final notification = NotificationDto.fromMessaging(payload).toDomain();

        if (receivedNotification.buttonKeyPressed != actionIgnore) {
          await context.router.navigate(
            DoorNotificationRoute(notification: notification),
          );
        } else {
          getIt<AnswerNotificationBloc>()
              .add(AnswerNotificationEvent.ignorePressed(notification.id));
        }
      },
    );
  }

  static Future<void> onBackgroundMessage() async {
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage remoteMessage,
  ) async {
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        displayOnForeground: true,
        displayOnBackground: true,
        id: DateTime.now().millisecond.remainder(100000),
        channelKey: channelKey,
        notificationLayout: NotificationLayout.BigPicture,
        color: defaultColor,
        title: remoteMessage.data['title'] as String,
        body: remoteMessage.data['body'] as String,
        bigPicture: remoteMessage.data['picture'] as String,
        payload: {
          "id": remoteMessage.data['id'] as String,
          "syscode": remoteMessage.data['syscode'] as String,
          "name": remoteMessage.data['name'] as String,
          "picture": remoteMessage.data['picture'] as String,
          "datetimeString": remoteMessage.data['datetime'].toString(),
          "recognizedString": remoteMessage.data['recognized'].toString(),
          "answeredBy": "",
          "answer": "",
        },
      ),
      actionButtons: [
        NotificationActionButton(
          key: actionIgnore,
          label: 'Ignore',
          autoDismissable: true,
          buttonType: ActionButtonType.KeepOnTop,
        ),
        NotificationActionButton(
          key: actionToDoor,
          label: 'Go to door',
          autoDismissable: true,
        ),
      ],
    );
  }
}
