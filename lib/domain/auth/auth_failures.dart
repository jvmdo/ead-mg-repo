import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.requiresRecentLogin() = RequireLogin;
  const factory AuthFailure.wrongCodes() = WrongCodes;
  const factory AuthFailure.functionExecutionError() = FunctionExecutionError;
  const factory AuthFailure.uploadError() = UploadError;
  const factory AuthFailure.serverError() = ServerError;
}
