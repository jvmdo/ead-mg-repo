import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ead_app/domain/auth/value_objects.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    @JsonKey(ignore: true) String? id,
    String? sucode,
    required String syscode,
    required String name,
    required String email,
    required String type,
    required String profilePicture,
    required String addedBy,
    required int createdAt,
    required bool isRegistered,
    required bool isBlocked,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      sucode: user.sucode.getOrCrash(),
      syscode: user.syscode.getOrCrash(),
      name: user.name.getOrCrash(),
      email: user.email.getOrCrash(),
      type: user.type.getOrCrash(),
      profilePicture: user.profilePicture.getOrCrash(),
      addedBy: user.addedBy.getOrCrash(),
      createdAt: user.createdAt.getOrCrash().millisecondsSinceEpoch,
      isRegistered: user.isRegistered,
      isBlocked: user.isBlocked,
    );
  }

  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(id!),
      sucode: UniqueId.fromUniqueString(sucode ?? ''),
      syscode: UniqueId.fromUniqueString(syscode),
      name: FullName(name),
      email: EmailAddress(email),
      type: UserType(type),
      profilePicture: PictureUrl(profilePicture),
      addedBy: ByName(addedBy),
      createdAt: DateInfo(createdAt),
      isRegistered: isRegistered,
      isBlocked: isBlocked,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromDocument(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument([Map<String, dynamic>? imagesPath]) =>
      toJson()
        ..remove('id')
        ..addAll(imagesPath ?? {});
}
