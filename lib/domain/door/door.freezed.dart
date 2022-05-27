// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'door.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DoorTearOff {
  const _$DoorTearOff();

  _Door call(
      {required UniqueId id, required bool isOpened, required bool isSirenOn}) {
    return _Door(
      id: id,
      isOpened: isOpened,
      isSirenOn: isSirenOn,
    );
  }
}

/// @nodoc
const $Door = _$DoorTearOff();

/// @nodoc
mixin _$Door {
  UniqueId get id => throw _privateConstructorUsedError;
  bool get isOpened => throw _privateConstructorUsedError;
  bool get isSirenOn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DoorCopyWith<Door> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoorCopyWith<$Res> {
  factory $DoorCopyWith(Door value, $Res Function(Door) then) =
      _$DoorCopyWithImpl<$Res>;
  $Res call({UniqueId id, bool isOpened, bool isSirenOn});
}

/// @nodoc
class _$DoorCopyWithImpl<$Res> implements $DoorCopyWith<$Res> {
  _$DoorCopyWithImpl(this._value, this._then);

  final Door _value;
  // ignore: unused_field
  final $Res Function(Door) _then;

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
              as UniqueId,
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
abstract class _$DoorCopyWith<$Res> implements $DoorCopyWith<$Res> {
  factory _$DoorCopyWith(_Door value, $Res Function(_Door) then) =
      __$DoorCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, bool isOpened, bool isSirenOn});
}

/// @nodoc
class __$DoorCopyWithImpl<$Res> extends _$DoorCopyWithImpl<$Res>
    implements _$DoorCopyWith<$Res> {
  __$DoorCopyWithImpl(_Door _value, $Res Function(_Door) _then)
      : super(_value, (v) => _then(v as _Door));

  @override
  _Door get _value => super._value as _Door;

  @override
  $Res call({
    Object? id = freezed,
    Object? isOpened = freezed,
    Object? isSirenOn = freezed,
  }) {
    return _then(_Door(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
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

class _$_Door implements _Door {
  const _$_Door(
      {required this.id, required this.isOpened, required this.isSirenOn});

  @override
  final UniqueId id;
  @override
  final bool isOpened;
  @override
  final bool isSirenOn;

  @override
  String toString() {
    return 'Door(id: $id, isOpened: $isOpened, isSirenOn: $isSirenOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Door &&
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
  _$DoorCopyWith<_Door> get copyWith =>
      __$DoorCopyWithImpl<_Door>(this, _$identity);
}

abstract class _Door implements Door {
  const factory _Door(
      {required UniqueId id,
      required bool isOpened,
      required bool isSirenOn}) = _$_Door;

  @override
  UniqueId get id;
  @override
  bool get isOpened;
  @override
  bool get isSirenOn;
  @override
  @JsonKey(ignore: true)
  _$DoorCopyWith<_Door> get copyWith => throw _privateConstructorUsedError;
}
