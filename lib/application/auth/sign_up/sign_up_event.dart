part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  // Notice that these events take in "raw" unvalidated Strings
  const factory SignUpEvent.nameChanged(String nameStr) = NameChanged;
  const factory SignUpEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignUpEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignUpEvent.typeChanged(String typeStr) = TypeChanged;
  const factory SignUpEvent.syscodeChanged(String syscodeStr) = SyscodeChanged;
  const factory SignUpEvent.sucodeChanged(String sucodeStr) = SucoceChanged;
  const factory SignUpEvent.imagePickedChanged(List<XFile> imageList) =
      ImagePickedChanged;
  const factory SignUpEvent.signUpWithEmailAndPasswordPressed() =
      SignUpWithEmailAndPasswordPressed;
}
