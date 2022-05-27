part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  factory SignInState.initial() => SignInState.editingForm(
        email: EmailAddress(''),
        password: Password(''),
      );

  const factory SignInState.editingForm({
    required EmailAddress email,
    required Password password,
  }) = EditingForm;

  const factory SignInState.loginInProgress(
    SignInState formState,
  ) = LoginInProgress;

  const factory SignInState.loginFailure(
    SignInState formState,
    AuthFailure failure,
  ) = LoginFailure;

  const factory SignInState.loginSuccess() = LoginSuccess;
}
