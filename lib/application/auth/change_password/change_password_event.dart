part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  // this class refers to the raw string changed on input
  const factory ChangePasswordEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory ChangePasswordEvent.changePasswordPressed() =
      _ChangePasswordPressed;
}
