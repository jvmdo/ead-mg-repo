// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDto _$NotificationDtoFromJson(Map<String, dynamic> json) {
  return _NotificationDto.fromJson(json);
}

/// @nodoc
class _$NotificationDtoTearOff {
  const _$NotificationDtoTearOff();

  _NotificationDto call(
      {@JsonKey(ignore: true) String? id,
      required String syscode,
      required String name,
      required String picture,
      required int datetime,
      required bool recognized,
      required String answeredBy,
      required String answer}) {
    return _NotificationDto(
      id: id,
      syscode: syscode,
      name: name,
      picture: picture,
      datetime: datetime,
      recognized: recognized,
      answeredBy: answeredBy,
      answer: answer,
    );
  }

  NotificationDto fromJson(Map<String, Object?> json) {
    return NotificationDto.fromJson(json);
  }
}

/// @nodoc
const $NotificationDto = _$NotificationDtoTearOff();

/// @nodoc
mixin _$NotificationDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get syscode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;
  int get datetime => throw _privateConstructorUsedError;
  bool get recognized => throw _privateConstructorUsedError;
  String get answeredBy => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDtoCopyWith<NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDtoCopyWith<$Res> {
  factory $NotificationDtoCopyWith(
          NotificationDto value, $Res Function(NotificationDto) then) =
      _$NotificationDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String syscode,
      String name,
      String picture,
      int datetime,
      bool recognized,
      String answeredBy,
      String answer});
}

/// @nodoc
class _$NotificationDtoCopyWithImpl<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  _$NotificationDtoCopyWithImpl(this._value, this._then);

  final NotificationDto _value;
  // ignore: unused_field
  final $Res Function(NotificationDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? syscode = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? datetime = freezed,
    Object? recognized = freezed,
    Object? answeredBy = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      syscode: syscode == freezed
          ? _value.syscode
          : syscode // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as int,
      recognized: recognized == freezed
          ? _value.recognized
          : recognized // ignore: cast_nullable_to_non_nullable
              as bool,
      answeredBy: answeredBy == freezed
          ? _value.answeredBy
          : answeredBy // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NotificationDtoCopyWith<$Res>
    implements $NotificationDtoCopyWith<$Res> {
  factory _$NotificationDtoCopyWith(
          _NotificationDto value, $Res Function(_NotificationDto) then) =
      __$NotificationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String syscode,
      String name,
      String picture,
      int datetime,
      bool recognized,
      String answeredBy,
      String answer});
}

/// @nodoc
class __$NotificationDtoCopyWithImpl<$Res>
    extends _$NotificationDtoCopyWithImpl<$Res>
    implements _$NotificationDtoCopyWith<$Res> {
  __$NotificationDtoCopyWithImpl(
      _NotificationDto _value, $Res Function(_NotificationDto) _then)
      : super(_value, (v) => _then(v as _NotificationDto));

  @override
  _NotificationDto get _value => super._value as _NotificationDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? syscode = freezed,
    Object? name = freezed,
    Object? picture = freezed,
    Object? datetime = freezed,
    Object? recognized = freezed,
    Object? answeredBy = freezed,
    Object? answer = freezed,
  }) {
    return _then(_NotificationDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      syscode: syscode == freezed
          ? _value.syscode
          : syscode // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as int,
      recognized: recognized == freezed
          ? _value.recognized
          : recognized // ignore: cast_nullable_to_non_nullable
              as bool,
      answeredBy: answeredBy == freezed
          ? _value.answeredBy
          : answeredBy // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDto extends _NotificationDto {
  const _$_NotificationDto(
      {@JsonKey(ignore: true) this.id,
      required this.syscode,
      required this.name,
      required this.picture,
      required this.datetime,
      required this.recognized,
      required this.answeredBy,
      required this.answer})
      : super._();

  factory _$_NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String syscode;
  @override
  final String name;
  @override
  final String picture;
  @override
  final int datetime;
  @override
  final bool recognized;
  @override
  final String answeredBy;
  @override
  final String answer;

  @override
  String toString() {
    return 'NotificationDto(id: $id, syscode: $syscode, name: $name, picture: $picture, datetime: $datetime, recognized: $recognized, answeredBy: $answeredBy, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.syscode, syscode) || other.syscode == syscode) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.recognized, recognized) ||
                other.recognized == recognized) &&
            (identical(other.answeredBy, answeredBy) ||
                other.answeredBy == answeredBy) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, syscode, name, picture,
      datetime, recognized, answeredBy, answer);

  @JsonKey(ignore: true)
  @override
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      __$NotificationDtoCopyWithImpl<_NotificationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDtoToJson(this);
  }
}

abstract class _NotificationDto extends NotificationDto {
  const factory _NotificationDto(
      {@JsonKey(ignore: true) String? id,
      required String syscode,
      required String name,
      required String picture,
      required int datetime,
      required bool recognized,
      required String answeredBy,
      required String answer}) = _$_NotificationDto;
  const _NotificationDto._() : super._();

  factory _NotificationDto.fromJson(Map<String, dynamic> json) =
      _$_NotificationDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get syscode;
  @override
  String get name;
  @override
  String get picture;
  @override
  int get datetime;
  @override
  bool get recognized;
  @override
  String get answeredBy;
  @override
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$NotificationDtoCopyWith<_NotificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
