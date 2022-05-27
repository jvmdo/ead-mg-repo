import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_failures.freezed.dart';

@freezed
class UsersFailure with _$UsersFailure {
  const factory UsersFailure.badObjectValue() = BadObjectValue;
  const factory UsersFailure.snapshotError() = SnapshotError;
  const factory UsersFailure.queryError() = QueryError;
  const factory UsersFailure.currentUserUnavailable() = _CurrentUserUnavailable;
  const factory UsersFailure.uploadError() = UploadError;
  const factory UsersFailure.serverError() = ServerError;
}
