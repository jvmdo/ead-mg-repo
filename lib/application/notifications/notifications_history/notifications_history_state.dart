part of 'notifications_history_bloc.dart';

@freezed
class NotificationsHistoryState with _$NotificationsHistoryState {
  const factory NotificationsHistoryState.initial() = Initial;

  const factory NotificationsHistoryState.loadInProgress() = LoadInProgress;

  const factory NotificationsHistoryState.loadSuccess(
    List<Notification> notifications,
  ) = LoadSuccess;

  const factory NotificationsHistoryState.loadFailure(
    NotificationFailures failure,
  ) = LoadFailure;
}
