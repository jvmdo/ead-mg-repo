part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState.initial() => SignUpState.editingForm(
        name: FullName(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        type: UserType('empty'),
        syscode: Code(''),
        sucode: Code('initial'),
        images: Images(const []),
      );

  const factory SignUpState.editingForm({
    required FullName name,
    required EmailAddress emailAddress,
    required Password password,
    required UserType type,
    required Code syscode,
    required Code sucode,
    required Images images,
    @Default(false) bool displayFailure,
    AuthFailure? failure,
  }) = EditingForm;

  const factory SignUpState.creatingInProgress() = CreatingInProgress;

  const factory SignUpState.creatingSuccess() = CreatingSuccess;
}
