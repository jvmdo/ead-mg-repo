part of 'user_notifications_bloc.dart';

@freezed
class GetNotificationsState with _$GetNotificationsState {
  const factory GetNotificationsState.initial() = Initial;
  const factory GetNotificationsState.loadInProgress() = LoadInProgress;
  const factory GetNotificationsState.loadSuccess(
    List<Notification> notifications,
  ) = LoadSuccess;
  const factory GetNotificationsState.loadFailure(
    NotificationFailures failure,
  ) = LoadFailure;
}
