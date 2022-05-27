import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'door.freezed.dart';

@freezed
class Door with _$Door {
  const factory Door({
    required UniqueId id,
    required bool isOpened,
    required bool isSirenOn,
  }) = _Door;
}
