// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watch_door_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WatchDoorEventTearOff {
  const _$WatchDoorEventTearOff();

  WatchStarted watchStarted() {
    return const WatchStarted();
  }

  OpenPressed openPressed() {
    return const OpenPressed();
  }

  ClosePressed closePressed() {
    return const ClosePressed();
  }

  AlarmPressed alarmPressed() {
    return const AlarmPressed();
  }

  WatchState watchState(Either<DoorFailure, Door> failureOrDoor) {
    return WatchState(
      failureOrDoor,
    );
  }
}

/// @nodoc
const $WatchDoorEvent = _$WatchDoorEventTearOff();

/// @nodoc
mixin _$WatchDoorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() openPressed,
    required TResult Function() closePressed,
    required TResult Function() alarmPressed,
    required TResult Function(Either<DoorFailure, Door> failureOrDoor)
        watchState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(ClosePressed value) closePressed,
    required TResult Function(AlarmPressed value) alarmPressed,
    required TResult Function(WatchState value) watchState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchDoorEventCopyWith<$Res> {
  factory $WatchDoorEventCopyWith(
          WatchDoorEvent value, $Res Function(WatchDoorEvent) then) =
      _$WatchDoorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchDoorEventCopyWithImpl<$Res>
    implements $WatchDoorEventCopyWith<$Res> {
  _$WatchDoorEventCopyWithImpl(this._value, this._then);

  final WatchDoorEvent _value;
  // ignore: unused_field
  final $Res Function(WatchDoorEvent) _then;
}

/// @nodoc
abstract class $WatchStartedCopyWith<$Res> {
  factory $WatchStartedCopyWith(
          WatchStarted value, $Res Function(WatchStarted) then) =
      _$WatchStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchStartedCopyWithImpl<$Res>
    extends _$WatchDoorEventCopyWithImpl<$Res>
    implements $WatchStartedCopyWith<$Res> {
  _$WatchStartedCopyWithImpl(
      WatchStarted _value, $Res Function(WatchStarted) _then)
      : super(_value, (v) => _then(v as WatchStarted));

  @override
  WatchStarted get _value => super._value as WatchStarted;
}

/// @nodoc

class _$WatchStarted implements WatchStarted {
  const _$WatchStarted();

  @override
  String toString() {
    return 'WatchDoorEvent.watchStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() openPressed,
    required TResult Function() closePressed,
    required TResult Function() alarmPressed,
    required TResult Function(Either<DoorFailure, Door> failureOrDoor)
        watchState,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
  }) {
    return watchStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(ClosePressed value) closePressed,
    required TResult Function(AlarmPressed value) alarmPressed,
    required TResult Function(WatchState value) watchState,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
  }) {
    return watchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class WatchStarted implements WatchDoorEvent {
  const factory WatchStarted() = _$WatchStarted;
}

/// @nodoc
abstract class $OpenPressedCopyWith<$Res> {
  factory $OpenPressedCopyWith(
          OpenPressed value, $Res Function(OpenPressed) then) =
      _$OpenPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenPressedCopyWithImpl<$Res> extends _$WatchDoorEventCopyWithImpl<$Res>
    implements $OpenPressedCopyWith<$Res> {
  _$OpenPressedCopyWithImpl(
      OpenPressed _value, $Res Function(OpenPressed) _then)
      : super(_value, (v) => _then(v as OpenPressed));

  @override
  OpenPressed get _value => super._value as OpenPressed;
}

/// @nodoc

class _$OpenPressed implements OpenPressed {
  const _$OpenPressed();

  @override
  String toString() {
    return 'WatchDoorEvent.openPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OpenPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() openPressed,
    required TResult Function() closePressed,
    required TResult Function() alarmPressed,
    required TResult Function(Either<DoorFailure, Door> failureOrDoor)
        watchState,
  }) {
    return openPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
  }) {
    return openPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
    required TResult orElse(),
  }) {
    if (openPressed != null) {
      return openPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(ClosePressed value) closePressed,
    required TResult Function(AlarmPressed value) alarmPressed,
    required TResult Function(WatchState value) watchState,
  }) {
    return openPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
  }) {
    return openPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
    required TResult orElse(),
  }) {
    if (openPressed != null) {
      return openPressed(this);
    }
    return orElse();
  }
}

abstract class OpenPressed implements WatchDoorEvent {
  const factory OpenPressed() = _$OpenPressed;
}

/// @nodoc
abstract class $ClosePressedCopyWith<$Res> {
  factory $ClosePressedCopyWith(
          ClosePressed value, $Res Function(ClosePressed) then) =
      _$ClosePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClosePressedCopyWithImpl<$Res>
    extends _$WatchDoorEventCopyWithImpl<$Res>
    implements $ClosePressedCopyWith<$Res> {
  _$ClosePressedCopyWithImpl(
      ClosePressed _value, $Res Function(ClosePressed) _then)
      : super(_value, (v) => _then(v as ClosePressed));

  @override
  ClosePressed get _value => super._value as ClosePressed;
}

/// @nodoc

class _$ClosePressed implements ClosePressed {
  const _$ClosePressed();

  @override
  String toString() {
    return 'WatchDoorEvent.closePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClosePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() openPressed,
    required TResult Function() closePressed,
    required TResult Function() alarmPressed,
    required TResult Function(Either<DoorFailure, Door> failureOrDoor)
        watchState,
  }) {
    return closePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
  }) {
    return closePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
    required TResult orElse(),
  }) {
    if (closePressed != null) {
      return closePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(ClosePressed value) closePressed,
    required TResult Function(AlarmPressed value) alarmPressed,
    required TResult Function(WatchState value) watchState,
  }) {
    return closePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
  }) {
    return closePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
    required TResult orElse(),
  }) {
    if (closePressed != null) {
      return closePressed(this);
    }
    return orElse();
  }
}

abstract class ClosePressed implements WatchDoorEvent {
  const factory ClosePressed() = _$ClosePressed;
}

/// @nodoc
abstract class $AlarmPressedCopyWith<$Res> {
  factory $AlarmPressedCopyWith(
          AlarmPressed value, $Res Function(AlarmPressed) then) =
      _$AlarmPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AlarmPressedCopyWithImpl<$Res>
    extends _$WatchDoorEventCopyWithImpl<$Res>
    implements $AlarmPressedCopyWith<$Res> {
  _$AlarmPressedCopyWithImpl(
      AlarmPressed _value, $Res Function(AlarmPressed) _then)
      : super(_value, (v) => _then(v as AlarmPressed));

  @override
  AlarmPressed get _value => super._value as AlarmPressed;
}

/// @nodoc

class _$AlarmPressed implements AlarmPressed {
  const _$AlarmPressed();

  @override
  String toString() {
    return 'WatchDoorEvent.alarmPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AlarmPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() openPressed,
    required TResult Function() closePressed,
    required TResult Function() alarmPressed,
    required TResult Function(Either<DoorFailure, Door> failureOrDoor)
        watchState,
  }) {
    return alarmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
  }) {
    return alarmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
    required TResult orElse(),
  }) {
    if (alarmPressed != null) {
      return alarmPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(ClosePressed value) closePressed,
    required TResult Function(AlarmPressed value) alarmPressed,
    required TResult Function(WatchState value) watchState,
  }) {
    return alarmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
  }) {
    return alarmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
    required TResult orElse(),
  }) {
    if (alarmPressed != null) {
      return alarmPressed(this);
    }
    return orElse();
  }
}

abstract class AlarmPressed implements WatchDoorEvent {
  const factory AlarmPressed() = _$AlarmPressed;
}

/// @nodoc
abstract class $WatchStateCopyWith<$Res> {
  factory $WatchStateCopyWith(
          WatchState value, $Res Function(WatchState) then) =
      _$WatchStateCopyWithImpl<$Res>;
  $Res call({Either<DoorFailure, Door> failureOrDoor});
}

/// @nodoc
class _$WatchStateCopyWithImpl<$Res> extends _$WatchDoorEventCopyWithImpl<$Res>
    implements $WatchStateCopyWith<$Res> {
  _$WatchStateCopyWithImpl(WatchState _value, $Res Function(WatchState) _then)
      : super(_value, (v) => _then(v as WatchState));

  @override
  WatchState get _value => super._value as WatchState;

  @override
  $Res call({
    Object? failureOrDoor = freezed,
  }) {
    return _then(WatchState(
      failureOrDoor == freezed
          ? _value.failureOrDoor
          : failureOrDoor // ignore: cast_nullable_to_non_nullable
              as Either<DoorFailure, Door>,
    ));
  }
}

/// @nodoc

class _$WatchState implements WatchState {
  const _$WatchState(this.failureOrDoor);

  @override
  final Either<DoorFailure, Door> failureOrDoor;

  @override
  String toString() {
    return 'WatchDoorEvent.watchState(failureOrDoor: $failureOrDoor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WatchState &&
            (identical(other.failureOrDoor, failureOrDoor) ||
                other.failureOrDoor == failureOrDoor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrDoor);

  @JsonKey(ignore: true)
  @override
  $WatchStateCopyWith<WatchState> get copyWith =>
      _$WatchStateCopyWithImpl<WatchState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() openPressed,
    required TResult Function() closePressed,
    required TResult Function() alarmPressed,
    required TResult Function(Either<DoorFailure, Door> failureOrDoor)
        watchState,
  }) {
    return watchState(failureOrDoor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
  }) {
    return watchState?.call(failureOrDoor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? openPressed,
    TResult Function()? closePressed,
    TResult Function()? alarmPressed,
    TResult Function(Either<DoorFailure, Door> failureOrDoor)? watchState,
    required TResult orElse(),
  }) {
    if (watchState != null) {
      return watchState(failureOrDoor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchStarted value) watchStarted,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(ClosePressed value) closePressed,
    required TResult Function(AlarmPressed value) alarmPressed,
    required TResult Function(WatchState value) watchState,
  }) {
    return watchState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
  }) {
    return watchState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchStarted value)? watchStarted,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(ClosePressed value)? closePressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    TResult Function(WatchState value)? watchState,
    required TResult orElse(),
  }) {
    if (watchState != null) {
      return watchState(this);
    }
    return orElse();
  }
}

abstract class WatchState implements WatchDoorEvent {
  const factory WatchState(Either<DoorFailure, Door> failureOrDoor) =
      _$WatchState;

  Either<DoorFailure, Door> get failureOrDoor;
  @JsonKey(ignore: true)
  $WatchStateCopyWith<WatchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$WatchDoorStateTearOff {
  const _$WatchDoorStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(Door door) {
    return LoadSuccess(
      door,
    );
  }

  LoadFailure loadFailure(DoorFailure failure) {
    return LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $WatchDoorState = _$WatchDoorStateTearOff();

/// @nodoc
mixin _$WatchDoorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Door door) loadSuccess,
    required TResult Function(DoorFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchDoorStateCopyWith<$Res> {
  factory $WatchDoorStateCopyWith(
          WatchDoorState value, $Res Function(WatchDoorState) then) =
      _$WatchDoorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WatchDoorStateCopyWithImpl<$Res>
    implements $WatchDoorStateCopyWith<$Res> {
  _$WatchDoorStateCopyWithImpl(this._value, this._then);

  final WatchDoorState _value;
  // ignore: unused_field
  final $Res Function(WatchDoorState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$WatchDoorStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'WatchDoorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Door door) loadSuccess,
    required TResult Function(DoorFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WatchDoorState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadInProgressCopyWith<$Res> {
  factory $LoadInProgressCopyWith(
          LoadInProgress value, $Res Function(LoadInProgress) then) =
      _$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadInProgressCopyWithImpl<$Res>
    extends _$WatchDoorStateCopyWithImpl<$Res>
    implements $LoadInProgressCopyWith<$Res> {
  _$LoadInProgressCopyWithImpl(
      LoadInProgress _value, $Res Function(LoadInProgress) _then)
      : super(_value, (v) => _then(v as LoadInProgress));

  @override
  LoadInProgress get _value => super._value as LoadInProgress;
}

/// @nodoc

class _$LoadInProgress implements LoadInProgress {
  const _$LoadInProgress();

  @override
  String toString() {
    return 'WatchDoorState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Door door) loadSuccess,
    required TResult Function(DoorFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class LoadInProgress implements WatchDoorState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Door door});

  $DoorCopyWith<$Res> get door;
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res> extends _$WatchDoorStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? door = freezed,
  }) {
    return _then(LoadSuccess(
      door == freezed
          ? _value.door
          : door // ignore: cast_nullable_to_non_nullable
              as Door,
    ));
  }

  @override
  $DoorCopyWith<$Res> get door {
    return $DoorCopyWith<$Res>(_value.door, (value) {
      return _then(_value.copyWith(door: value));
    });
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.door);

  @override
  final Door door;

  @override
  String toString() {
    return 'WatchDoorState.loadSuccess(door: $door)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSuccess &&
            (identical(other.door, door) || other.door == door));
  }

  @override
  int get hashCode => Object.hash(runtimeType, door);

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Door door) loadSuccess,
    required TResult Function(DoorFailure failure) loadFailure,
  }) {
    return loadSuccess(door);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
  }) {
    return loadSuccess?.call(door);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(door);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements WatchDoorState {
  const factory LoadSuccess(Door door) = _$LoadSuccess;

  Door get door;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({DoorFailure failure});

  $DoorFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res> extends _$WatchDoorStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DoorFailure,
    ));
  }

  @override
  $DoorFailureCopyWith<$Res> get failure {
    return $DoorFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure);

  @override
  final DoorFailure failure;

  @override
  String toString() {
    return 'WatchDoorState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(Door door) loadSuccess,
    required TResult Function(DoorFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(Door door)? loadSuccess,
    TResult Function(DoorFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadInProgress value) loadInProgress,
    required TResult Function(LoadSuccess value) loadSuccess,
    required TResult Function(LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadInProgress value)? loadInProgress,
    TResult Function(LoadSuccess value)? loadSuccess,
    TResult Function(LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements WatchDoorState {
  const factory LoadFailure(DoorFailure failure) = _$LoadFailure;

  DoorFailure get failure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
