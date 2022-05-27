import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_failures.freezed.dart';

@freezed
class NotificationFailures with _$NotificationFailures {
  const factory NotificationFailures.currentUserUnavailable() =
      CurrentUserUnavailable;
  const factory NotificationFailures.queryError() = QueryError;
  const factory NotificationFailures.serverError() = ServerError;
}
