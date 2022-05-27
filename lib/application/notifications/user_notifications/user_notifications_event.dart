part of 'user_notifications_bloc.dart';

@freezed
class GetNotificationsEvent with _$GetNotificationsEvent {
  const factory GetNotificationsEvent.started(FullName userName) = Started;
  const factory GetNotificationsEvent.notificationsReceived(
    Either<NotificationFailures, List<Notification>> failureOrNotification,
  ) = NotificationsReceived;
}
