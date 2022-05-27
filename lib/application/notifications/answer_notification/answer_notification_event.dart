part of 'answer_notification_bloc.dart';

@freezed
class AnswerNotificationEvent with _$AnswerNotificationEvent {
  const factory AnswerNotificationEvent.allRightPressed(
    UniqueId notificationId,
  ) = AllRightPressed;

  const factory AnswerNotificationEvent.ignorePressed(
    UniqueId notificationId,
  ) = IgnorePressed;

  const factory AnswerNotificationEvent.openPressed(
    UniqueId notificationId,
  ) = OpenPressed;

  const factory AnswerNotificationEvent.alarmPressed(
    UniqueId notificationId,
  ) = AlarmPressed;
}
