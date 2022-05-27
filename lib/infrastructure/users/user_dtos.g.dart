// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      sucode: json['sucode'] as String?,
      syscode: json['syscode'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      type: json['type'] as String,
      profilePicture: json['profilePicture'] as String,
      addedBy: json['addedBy'] as String,
      createdAt: json['createdAt'] as int,
      isRegistered: json['isRegistered'] as bool,
      isBlocked: json['isBlocked'] as bool,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'sucode': instance.sucode,
      'syscode': instance.syscode,
      'name': instance.name,
      'email': instance.email,
      'type': instance.type,
      'profilePicture': instance.profilePicture,
      'addedBy': instance.addedBy,
      'createdAt': instance.createdAt,
      'isRegistered': instance.isRegistered,
      'isBlocked': instance.isBlocked,
    };
