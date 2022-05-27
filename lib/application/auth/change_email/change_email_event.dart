part of 'change_email_bloc.dart';

@freezed
class ChangeEmailEvent with _$ChangeEmailEvent {
  // this class refers to the raw string changed on input
  const factory ChangeEmailEvent.emailChanged(String emailStr) = _EmailChanged;
  const factory ChangeEmailEvent.sendChangeEmailPressed() =
      _SendChangeEmailPressed;
}
