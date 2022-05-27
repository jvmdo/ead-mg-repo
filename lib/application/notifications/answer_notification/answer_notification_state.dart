part of 'answer_notification_bloc.dart';

@freezed
class AnswerNotificationState with _$AnswerNotificationState {
  const factory AnswerNotificationState.initial() = Initial;
  const factory AnswerNotificationState.loading() = Loading;
  const factory AnswerNotificationState.success(Notification notification) =
      Success;
  const factory AnswerNotificationState.failure(
    NotificationFailures failure,
  ) = Failure;
}
