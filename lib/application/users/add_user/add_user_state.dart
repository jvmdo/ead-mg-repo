part of 'add_user_bloc.dart';

@freezed
class AddUserState with _$AddUserState {
  const factory AddUserState.editingForm({
    required FullName name,
    required UserType type,
    required Images images,
    required List<bool> displayErrorMessages,
  }) = EditingForm;

  factory AddUserState.initial() => AddUserState.editingForm(
        name: FullName(''),
        type: UserType(''),
        images: Images(const []),
        displayErrorMessages: [false, false],
      );

  const factory AddUserState.uploadingInProgress() = UploadingInProgress;
  const factory AddUserState.addedSuccess() = AddedSuccess;
  const factory AddUserState.addedFailure(UsersFailure failure) = AddedFailure;
}
