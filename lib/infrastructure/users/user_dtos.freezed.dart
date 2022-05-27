// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {@JsonKey(ignore: true) String? id,
      String? sucode,
      required String syscode,
      required String name,
      required String email,
      required String type,
      required String profilePicture,
      required String addedBy,
      required int createdAt,
      required bool isRegistered,
      required bool isBlocked}) {
    return _UserDto(
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

  UserDto fromJson(Map<String, Object?> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String? get sucode => throw _privateConstructorUsedError;
  String get syscode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  String get addedBy => throw _privateConstructorUsedError;
  int get createdAt => throw _privateConstructorUsedError;
  bool get isRegistered => throw _privateConstructorUsedError;
  bool get isBlocked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? sucode,
      String syscode,
      String name,
      String email,
      String type,
      String profilePicture,
      String addedBy,
      int createdAt,
      bool isRegistered,
      bool isBlocked});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

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
              as String?,
      sucode: sucode == freezed
          ? _value.sucode
          : sucode // ignore: cast_nullable_to_non_nullable
              as String?,
      syscode: syscode == freezed
          ? _value.syscode
          : syscode // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      addedBy: addedBy == freezed
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? sucode,
      String syscode,
      String name,
      String email,
      String type,
      String profilePicture,
      String addedBy,
      int createdAt,
      bool isRegistered,
      bool isBlocked});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

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
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sucode: sucode == freezed
          ? _value.sucode
          : sucode // ignore: cast_nullable_to_non_nullable
              as String?,
      syscode: syscode == freezed
          ? _value.syscode
          : syscode // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      addedBy: addedBy == freezed
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
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
@JsonSerializable()
class _$_UserDto extends _UserDto {
  const _$_UserDto(
      {@JsonKey(ignore: true) this.id,
      this.sucode,
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

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String? sucode;
  @override
  final String syscode;
  @override
  final String name;
  @override
  final String email;
  @override
  final String type;
  @override
  final String profilePicture;
  @override
  final String addedBy;
  @override
  final int createdAt;
  @override
  final bool isRegistered;
  @override
  final bool isBlocked;

  @override
  String toString() {
    return 'UserDto(id: $id, sucode: $sucode, syscode: $syscode, name: $name, email: $email, type: $type, profilePicture: $profilePicture, addedBy: $addedBy, createdAt: $createdAt, isRegistered: $isRegistered, isBlocked: $isBlocked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
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
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(this);
  }
}

abstract class _UserDto extends UserDto {
  const factory _UserDto(
      {@JsonKey(ignore: true) String? id,
      String? sucode,
      required String syscode,
      required String name,
      required String email,
      required String type,
      required String profilePicture,
      required String addedBy,
      required int createdAt,
      required bool isRegistered,
      required bool isBlocked}) = _$_UserDto;
  const _UserDto._() : super._();

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String? get sucode;
  @override
  String get syscode;
  @override
  String get name;
  @override
  String get email;
  @override
  String get type;
  @override
  String get profilePicture;
  @override
  String get addedBy;
  @override
  int get createdAt;
  @override
  bool get isRegistered;
  @override
  bool get isBlocked;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
