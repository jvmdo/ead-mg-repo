import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ead_app/domain/door/door.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'door_dtos.freezed.dart';
part 'door_dtos.g.dart';

@freezed
class DoorDto with _$DoorDto {
  const DoorDto._();

  const factory DoorDto({
    @JsonKey(ignore: true) String? id,
    required bool isOpened,
    required bool isSirenOn,
  }) = _DoorDto;

  factory DoorDto.fromDomain(Door door) {
    return DoorDto(
      id: door.id.getOrCrash(),
      isOpened: door.isOpened,
      isSirenOn: door.isSirenOn,
    );
  }

  Door toDomain() {
    return Door(
      id: UniqueId.fromUniqueString(id!),
      isOpened: isOpened,
      isSirenOn: isSirenOn,
    );
  }

  factory DoorDto.fromJson(Map<String, dynamic> json) =>
      _$DoorDtoFromJson(json);

  factory DoorDto.fromDocument(DocumentSnapshot doc) {
    return DoorDto.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');
}
