import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ead_app/domain/notifications/value_objects.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'notifications.freezed.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    required UniqueId id,
    required UniqueId syscode,
    required FullName name,
    required PictureUrl picture,
    required DateInfo datetime,
    required bool recognized,
    required ByName answeredBy,
    required NftAnswer answer,
  }) = _Notification;
}
