import 'package:dartz/dartz.dart';
import 'package:ead_app/domain/notifications/notification_failures.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/domain/users/value_objects.dart';

abstract class NotificationsInterface {
  Future<Either<NotificationFailures, List<Notification>>>
      getAllNotifications();

  Future<Either<NotificationFailures, List<Notification>>> getUserNotifications(
    FullName userName,
  );

  Future<Either<NotificationFailures, Notification>> answerAs(
    String answer,
    UniqueId notificationId,
  );

  Stream<Either<NotificationFailures, List<Notification>>>
      queryNotificationsByName(
    String? queryName,
  );

  Future<Either<NotificationFailures, List<Notification>>>
      getNotificationsByAnswer(
    String queryName,
  );

  Future<void> subscribeToTopic();
}
