part of 'recover_password_bloc.dart';

@freezed
class RecoverPasswordEvent with _$RecoverPasswordEvent {
  const factory RecoverPasswordEvent.emailChanged(String emailStr) =
      _EmailChanged;
  const factory RecoverPasswordEvent.sendRecoverPasswordEmailPressed() =
      _SendRecoverPasswordEmailPressed;
}
