import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/domain/notifications/value_objects.dart';
import 'package:ead_app/domain/users/value_objects.dart';
import 'package:ead_app/presentation/core/string_x.dart';

part 'notification_dtos.freezed.dart';
part 'notification_dtos.g.dart';

@freezed
class NotificationDto with _$NotificationDto {
  const NotificationDto._();

  const factory NotificationDto({
    @JsonKey(ignore: true) String? id,
    required String syscode,
    required String name,
    required String picture,
    required int datetime,
    required bool recognized,
    required String answeredBy,
    required String answer,
  }) = _NotificationDto;

  factory NotificationDto.fromDomain(Notification notification) {
    return NotificationDto(
      id: notification.id.getOrCrash(),
      syscode: notification.syscode.getOrCrash(),
      name: notification.name.getOrCrash(),
      picture: notification.picture.getOrCrash(),
      datetime: notification.datetime.getOrCrash().millisecondsSinceEpoch,
      recognized: notification.recognized,
      answeredBy: notification.answeredBy.getOrCrash(),
      answer: notification.answer.getOrCrash(),
    );
  }

  Notification toDomain() {
    return Notification(
      id: UniqueId.fromUniqueString(id!),
      syscode: UniqueId.fromUniqueString(syscode),
      name: FullName(name),
      picture: PictureUrl(picture),
      datetime: DateInfo(datetime),
      recognized: recognized,
      answeredBy: ByName(answeredBy),
      answer: NftAnswer(answer),
    );
  }

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  factory NotificationDto.fromDocument(DocumentSnapshot doc) {
    return NotificationDto.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  Map<String, dynamic> toDocument() => toJson()..remove('id');

  // Awesome Notification's payload parser
  // It is needed because [Notification] needs [recognized] as bool
  // and [datetime] as int but the payload it is all Map<String,String>
  factory NotificationDto.fromMessaging(Map<String, String> mess) {
    final localMess = mess.map((key, value) {
      if (key == 'recognizedString') {
        return MapEntry('recognized', value.parseBool());
      } else if (key == 'datetimeString') {
        return MapEntry('datetime', int.parse(value));
      }
      return MapEntry(key, value as dynamic);
    });

    return NotificationDto.fromJson(localMess).copyWith(id: mess['id']);
  }
}
