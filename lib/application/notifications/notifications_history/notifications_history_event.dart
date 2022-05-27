part of 'notifications_history_bloc.dart';

@freezed
class NotificationsHistoryEvent with _$NotificationsHistoryEvent {
  const factory NotificationsHistoryEvent.started() = _Started;

  const factory NotificationsHistoryEvent.notificationsReceived(
    Either<NotificationFailures, List<Notification>> failureOrNotifications,
  ) = NotificationsReceived;

  const factory NotificationsHistoryEvent.queryNotificationsByName(
    String? queryName,
  ) = QueryNotificationsByName;

  const factory NotificationsHistoryEvent.queryNotificationsByAnswer(
    String queryAnswer,
  ) = QueryNotificationsByAnswer;
}
