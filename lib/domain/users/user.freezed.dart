// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UniqueId id,
      required UniqueId sucode,
      required UniqueId syscode,
      required FullName name,
      required EmailAddress email,
      required UserType type,
      required PictureUrl profilePicture,
      required ByName addedBy,
      required DateInfo createdAt,
      required bool isRegistered,
      required bool isBlocked}) {
    return _User(
      id: id,
      sucode: sucode,
      syscode: syscode,
      name: name,
      email: email,
      type: type,
      profilePicture: profilePicture,
      addedBy: addedBy,
      createdAt: createdAt,
      isRegistered: isRegistered,
      isBlocked: isBlocked,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id => throw _privateConstructorUsedError;
  UniqueId get sucode => throw _privateConstructorUsedError;
  UniqueId get syscode => throw _privateConstructorUsedError;
  FullName get name => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  UserType get type => throw _privateConstructorUsedError;
  PictureUrl get profilePicture => throw _privateConstructorUsedError;
  ByName get addedBy => throw _privateConstructorUsedError;
  DateInfo get createdAt => throw _privateConstructorUsedError;
  bool get isRegistered => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UniqueId sucode,
      UniqueId syscode,
      FullName name,
      EmailAddress email,
      UserType type,
      PictureUrl profilePicture,
      ByName addedBy,
      DateInfo createdAt,
      bool isRegistered,
      bool isBlocked});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? sucode = freezed,
    Object? syscode = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? type = freezed,
    Object? profilePicture = freezed,
    Object? addedBy = freezed,
    Object? createdAt = freezed,
    Object? isRegistered = freezed,
    Object? isBlocked = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      sucode: sucode == freezed
          ? _value.sucode
          : sucode // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      syscode: syscode == freezed
          ? _value.syscode
          : syscode // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FullName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as PictureUrl,
      addedBy: addedBy == freezed
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as ByName,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateInfo,
      isRegistered: isRegistered == freezed
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: isBlocked == freezed
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UniqueId sucode,
      UniqueId syscode,
      FullName name,
      EmailAddress email,
      UserType type,
      PictureUrl profilePicture,
      ByName addedBy,
      DateInfo createdAt,
      bool isRegistered,
      bool isBlocked});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? sucode = freezed,
    Object? syscode = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? type = freezed,
    Object? profilePicture = freezed,
    Object? addedBy = freezed,
    Object? createdAt = freezed,
    Object? isRegistered = freezed,
    Object? isBlocked = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      sucode: sucode == freezed
          ? _value.sucode
          : sucode // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      syscode: syscode == freezed
          ? _value.syscode
          : syscode // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FullName,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as PictureUrl,
      addedBy: addedBy == freezed
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as ByName,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateInfo,
      isRegistered: isRegistered == freezed
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      isBlocked: isBlocked == freezed
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User(
      {required this.id,
      required this.sucode,
      required this.syscode,
      required this.name,
      required this.email,
      required this.type,
      required this.profilePicture,
      required this.addedBy,
      required this.createdAt,
      required this.isRegistered,
      required this.isBlocked})
      : super._();

  @override
  final UniqueId id;
  @override
  final UniqueId sucode;
  @override
  final UniqueId syscode;
  @override
  final FullName name;
  @override
  final EmailAddress email;
  @override
  final UserType type;
  @override
  final PictureUrl profilePicture;
  @override
  final ByName addedBy;
  @override
  final DateInfo createdAt;
  @override
  final bool isRegistered;
  @override
  final bool isBlocked;

  @override
  String toString() {
    return 'User(id: $id, sucode: $sucode, syscode: $syscode, name: $name, email: $email, type: $type, profilePicture: $profilePicture, addedBy: $addedBy, createdAt: $createdAt, isRegistered: $isRegistered, isBlocked: $isBlocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sucode, sucode) || other.sucode == sucode) &&
            (identical(other.syscode, syscode) || other.syscode == syscode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isRegistered, isRegistered) ||
                other.isRegistered == isRegistered) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sucode, syscode, name, email,
      type, profilePicture, addedBy, createdAt, isRegistered, isBlocked);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required UniqueId id,
      required UniqueId sucode,
      required UniqueId syscode,
      required FullName name,
      required EmailAddress email,
      required UserType type,
      required PictureUrl profilePicture,
      required ByName addedBy,
      required DateInfo createdAt,
      required bool isRegistered,
      required bool isBlocked}) = _$_User;
  const _User._() : super._();

  @override
  UniqueId get id;
  @override
  UniqueId get sucode;
  @override
  UniqueId get syscode;
  @override
  FullName get name;
  @override
  EmailAddress get email;
  @override
  UserType get type;
  @override
  PictureUrl get profilePicture;
  @override
  ByName get addedBy;
  @override
  DateInfo get createdAt;
  @override
  bool get isRegistered;
  @override
  bool get isBlocked;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
