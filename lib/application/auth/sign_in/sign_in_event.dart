part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  // Notice that these events take in "raw" unvalidated Strings
  const factory SignInEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
}
