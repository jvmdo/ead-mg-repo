part of 'add_user_bloc.dart';

@freezed
class AddUserEvent with _$AddUserEvent {
  const factory AddUserEvent.nameChanged(String nameStr) = NameChanged;
  const factory AddUserEvent.typeChanged(String typeStr) = TypeChanged;
  const factory AddUserEvent.numberOfImagesChanged(List<XFile> images) =
      NumberOfImagesChanged;
  const factory AddUserEvent.addUserPressed() = AddUserPressed;
}
