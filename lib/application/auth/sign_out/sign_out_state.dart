part of 'sign_out_bloc.dart';

@freezed
class SignOutState with _$SignOutState {
  const factory SignOutState({
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignOutState;

  factory SignOutState.initial() => SignOutState(
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
