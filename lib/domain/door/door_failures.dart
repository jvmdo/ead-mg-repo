import 'package:freezed_annotation/freezed_annotation.dart';

part 'door_failures.freezed.dart';

@freezed
class DoorFailure with _$DoorFailure {
  const factory DoorFailure.currentUserUnavailable() = CurrentUserUnavailable;
  const factory DoorFailure.queryError() = QueryError;
  const factory DoorFailure.snapshotsError() = SnapshotsError;
  const factory DoorFailure.updateFieldError() = UpdateFieldError;
  const factory DoorFailure.serverError() = ServerError;
}
