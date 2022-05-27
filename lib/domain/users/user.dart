import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ead_app/domain/auth/value_objects.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User({
    required UniqueId id,
    required UniqueId sucode,
    required UniqueId syscode,
    required FullName name,
    required EmailAddress email,
    required UserType type,
    required PictureUrl profilePicture,
    required ByName addedBy,
    required DateInfo createdAt,
    required bool isRegistered,
    required bool isBlocked,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        sucode: UniqueId(),
        syscode: UniqueId(),
        name: FullName(''),
        email: EmailAddress(''),
        type: UserType(''),
        profilePicture: PictureUrl(''),
        addedBy: ByName(''),
        createdAt: DateInfo(0),
        isRegistered: false,
        isBlocked: false,
      );

  factory User.dummy() => User(
        id: UniqueId(),
        sucode: UniqueId(),
        syscode: UniqueId(),
        name: FullName('Dummy User'),
        email: EmailAddress('dummy@email.com'),
        type: UserType('guest'),
        profilePicture: PictureUrl('http://placeimg.com/640/480/dummy'),
        addedBy: ByName(''),
        createdAt: DateInfo(DateTime.now().millisecondsSinceEpoch),
        isRegistered: false,
        isBlocked: false,
      );

  String get status {
    if (isBlocked) {
      return "Blocked";
    } else {
      if (isRegistered) {
        return "Registered";
      } else {
        return "Not registered";
      }
    }
  }
}
