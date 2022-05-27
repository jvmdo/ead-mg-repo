part of 'change_email_bloc.dart';

@freezed
class ChangeEmailState with _$ChangeEmailState {
  const factory ChangeEmailState({
    required EmailAddress emailAddress,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _ChangeEmailState;

  factory ChangeEmailState.initial() => ChangeEmailState(
        emailAddress: EmailAddress(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
