// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'door_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoorDto _$DoorDtoFromJson(Map<String, dynamic> json) {
  return _DoorDto.fromJson(json);
}

/// @nodoc
class _$DoorDtoTearOff {
  const _$DoorDtoTearOff();

  _DoorDto call(
      {@JsonKey(ignore: true) String? id,
      required bool isOpened,
      required bool isSirenOn}) {
    return _DoorDto(
      id: id,
      isOpened: isOpened,
      isSirenOn: isSirenOn,
    );
  }

  DoorDto fromJson(Map<String, Object?> json) {
    return DoorDto.fromJson(json);
  }
}

/// @nodoc
const $DoorDto = _$DoorDtoTearOff();

/// @nodoc
mixin _$DoorDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  bool get isSirenOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoorDtoCopyWith<DoorDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoorDtoCopyWith<$Res> {
  factory $DoorDtoCopyWith(DoorDto value, $Res Function(DoorDto) then) =
      _$DoorDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String? id, bool isOpened, bool isSirenOn});
}

/// @nodoc
class _$DoorDtoCopyWithImpl<$Res> implements $DoorDtoCopyWith<$Res> {
  _$DoorDtoCopyWithImpl(this._value, this._then);

  final DoorDto _value;
  // ignore: unused_field
  final $Res Function(DoorDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isOpened = freezed,
    Object? isSirenOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpened: isOpened == freezed
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      isSirenOn: isSirenOn == freezed
          ? _value.isSirenOn
          : isSirenOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DoorDtoCopyWith<$Res> implements $DoorDtoCopyWith<$Res> {
  factory _$DoorDtoCopyWith(_DoorDto value, $Res Function(_DoorDto) then) =
      __$DoorDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String? id, bool isOpened, bool isSirenOn});
}

/// @nodoc
class __$DoorDtoCopyWithImpl<$Res> extends _$DoorDtoCopyWithImpl<$Res>
    implements _$DoorDtoCopyWith<$Res> {
  __$DoorDtoCopyWithImpl(_DoorDto _value, $Res Function(_DoorDto) _then)
      : super(_value, (v) => _then(v as _DoorDto));

  @override
  _DoorDto get _value => super._value as _DoorDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? isOpened = freezed,
    Object? isSirenOn = freezed,
  }) {
    return _then(_DoorDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isOpened: isOpened == freezed
          ? _value.isOpened
          : isOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      isSirenOn: isSirenOn == freezed
          ? _value.isSirenOn
          : isSirenOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DoorDto extends _DoorDto {
  const _$_DoorDto(
      {@JsonKey(ignore: true) this.id,
      required this.isOpened,
      required this.isSirenOn})
      : super._();

  factory _$_DoorDto.fromJson(Map<String, dynamic> json) =>
      _$$_DoorDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final bool isOpened;
  @override
  final bool isSirenOn;

  @override
  String toString() {
    return 'DoorDto(id: $id, isOpened: $isOpened, isSirenOn: $isSirenOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DoorDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isOpened, isOpened) ||
                other.isOpened == isOpened) &&
            (identical(other.isSirenOn, isSirenOn) ||
                other.isSirenOn == isSirenOn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isOpened, isSirenOn);

  @JsonKey(ignore: true)
  @override
  _$DoorDtoCopyWith<_DoorDto> get copyWith =>
      __$DoorDtoCopyWithImpl<_DoorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DoorDtoToJson(this);
  }
}

abstract class _DoorDto extends DoorDto {
  const factory _DoorDto(
      {@JsonKey(ignore: true) String? id,
      required bool isOpened,
      required bool isSirenOn}) = _$_DoorDto;
  const _DoorDto._() : super._();

  factory _DoorDto.fromJson(Map<String, dynamic> json) = _$_DoorDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  bool get isOpened;
  @override
  bool get isSirenOn;
  @override
  @JsonKey(ignore: true)
  _$DoorDtoCopyWith<_DoorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
