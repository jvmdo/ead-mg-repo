// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationDto _$$_NotificationDtoFromJson(Map<String, dynamic> json) =>
    _$_NotificationDto(
      syscode: json['syscode'] as String,
      name: json['name'] as String,
      picture: json['picture'] as String,
      datetime: json['datetime'] as int,
      recognized: json['recognized'] as bool,
      answeredBy: json['answeredBy'] as String,
      answer: json['answer'] as String,
    );

Map<String, dynamic> _$$_NotificationDtoToJson(_$_NotificationDto instance) =>
    <String, dynamic>{
      'syscode': instance.syscode,
      'name': instance.name,
      'picture': instance.picture,
      'datetime': instance.datetime,
      'recognized': instance.recognized,
      'answeredBy': instance.answeredBy,
      'answer': instance.answer,
    };
