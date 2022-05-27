part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signedIn() = SignedId;
  const factory AuthEvent.signedOut() = SignedOut;
}
