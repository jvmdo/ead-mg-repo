// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnswerNotificationEventTearOff {
  const _$AnswerNotificationEventTearOff();

  AllRightPressed allRightPressed(UniqueId notificationId) {
    return AllRightPressed(
      notificationId,
    );
  }

  IgnorePressed ignorePressed(UniqueId notificationId) {
    return IgnorePressed(
      notificationId,
    );
  }

  OpenPressed openPressed(UniqueId notificationId) {
    return OpenPressed(
      notificationId,
    );
  }

  AlarmPressed alarmPressed(UniqueId notificationId) {
    return AlarmPressed(
      notificationId,
    );
  }
}

/// @nodoc
const $AnswerNotificationEvent = _$AnswerNotificationEventTearOff();

/// @nodoc
mixin _$AnswerNotificationEvent {
  UniqueId get notificationId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId notificationId) allRightPressed,
    required TResult Function(UniqueId notificationId) ignorePressed,
    required TResult Function(UniqueId notificationId) openPressed,
    required TResult Function(UniqueId notificationId) alarmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllRightPressed value) allRightPressed,
    required TResult Function(IgnorePressed value) ignorePressed,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(AlarmPressed value) alarmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerNotificationEventCopyWith<AnswerNotificationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerNotificationEventCopyWith<$Res> {
  factory $AnswerNotificationEventCopyWith(AnswerNotificationEvent value,
          $Res Function(AnswerNotificationEvent) then) =
      _$AnswerNotificationEventCopyWithImpl<$Res>;
  $Res call({UniqueId notificationId});
}

/// @nodoc
class _$AnswerNotificationEventCopyWithImpl<$Res>
    implements $AnswerNotificationEventCopyWith<$Res> {
  _$AnswerNotificationEventCopyWithImpl(this._value, this._then);

  final AnswerNotificationEvent _value;
  // ignore: unused_field
  final $Res Function(AnswerNotificationEvent) _then;

  @override
  $Res call({
    Object? notificationId = freezed,
  }) {
    return _then(_value.copyWith(
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc
abstract class $AllRightPressedCopyWith<$Res>
    implements $AnswerNotificationEventCopyWith<$Res> {
  factory $AllRightPressedCopyWith(
          AllRightPressed value, $Res Function(AllRightPressed) then) =
      _$AllRightPressedCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId notificationId});
}

/// @nodoc
class _$AllRightPressedCopyWithImpl<$Res>
    extends _$AnswerNotificationEventCopyWithImpl<$Res>
    implements $AllRightPressedCopyWith<$Res> {
  _$AllRightPressedCopyWithImpl(
      AllRightPressed _value, $Res Function(AllRightPressed) _then)
      : super(_value, (v) => _then(v as AllRightPressed));

  @override
  AllRightPressed get _value => super._value as AllRightPressed;

  @override
  $Res call({
    Object? notificationId = freezed,
  }) {
    return _then(AllRightPressed(
      notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$AllRightPressed implements AllRightPressed {
  const _$AllRightPressed(this.notificationId);

  @override
  final UniqueId notificationId;

  @override
  String toString() {
    return 'AnswerNotificationEvent.allRightPressed(notificationId: $notificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllRightPressed &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  @JsonKey(ignore: true)
  @override
  $AllRightPressedCopyWith<AllRightPressed> get copyWith =>
      _$AllRightPressedCopyWithImpl<AllRightPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId notificationId) allRightPressed,
    required TResult Function(UniqueId notificationId) ignorePressed,
    required TResult Function(UniqueId notificationId) openPressed,
    required TResult Function(UniqueId notificationId) alarmPressed,
  }) {
    return allRightPressed(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
  }) {
    return allRightPressed?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
    required TResult orElse(),
  }) {
    if (allRightPressed != null) {
      return allRightPressed(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllRightPressed value) allRightPressed,
    required TResult Function(IgnorePressed value) ignorePressed,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(AlarmPressed value) alarmPressed,
  }) {
    return allRightPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
  }) {
    return allRightPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    required TResult orElse(),
  }) {
    if (allRightPressed != null) {
      return allRightPressed(this);
    }
    return orElse();
  }
}

abstract class AllRightPressed implements AnswerNotificationEvent {
  const factory AllRightPressed(UniqueId notificationId) = _$AllRightPressed;

  @override
  UniqueId get notificationId;
  @override
  @JsonKey(ignore: true)
  $AllRightPressedCopyWith<AllRightPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IgnorePressedCopyWith<$Res>
    implements $AnswerNotificationEventCopyWith<$Res> {
  factory $IgnorePressedCopyWith(
          IgnorePressed value, $Res Function(IgnorePressed) then) =
      _$IgnorePressedCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId notificationId});
}

/// @nodoc
class _$IgnorePressedCopyWithImpl<$Res>
    extends _$AnswerNotificationEventCopyWithImpl<$Res>
    implements $IgnorePressedCopyWith<$Res> {
  _$IgnorePressedCopyWithImpl(
      IgnorePressed _value, $Res Function(IgnorePressed) _then)
      : super(_value, (v) => _then(v as IgnorePressed));

  @override
  IgnorePressed get _value => super._value as IgnorePressed;

  @override
  $Res call({
    Object? notificationId = freezed,
  }) {
    return _then(IgnorePressed(
      notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$IgnorePressed implements IgnorePressed {
  const _$IgnorePressed(this.notificationId);

  @override
  final UniqueId notificationId;

  @override
  String toString() {
    return 'AnswerNotificationEvent.ignorePressed(notificationId: $notificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IgnorePressed &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  @JsonKey(ignore: true)
  @override
  $IgnorePressedCopyWith<IgnorePressed> get copyWith =>
      _$IgnorePressedCopyWithImpl<IgnorePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId notificationId) allRightPressed,
    required TResult Function(UniqueId notificationId) ignorePressed,
    required TResult Function(UniqueId notificationId) openPressed,
    required TResult Function(UniqueId notificationId) alarmPressed,
  }) {
    return ignorePressed(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
  }) {
    return ignorePressed?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
    required TResult orElse(),
  }) {
    if (ignorePressed != null) {
      return ignorePressed(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllRightPressed value) allRightPressed,
    required TResult Function(IgnorePressed value) ignorePressed,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(AlarmPressed value) alarmPressed,
  }) {
    return ignorePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
  }) {
    return ignorePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    required TResult orElse(),
  }) {
    if (ignorePressed != null) {
      return ignorePressed(this);
    }
    return orElse();
  }
}

abstract class IgnorePressed implements AnswerNotificationEvent {
  const factory IgnorePressed(UniqueId notificationId) = _$IgnorePressed;

  @override
  UniqueId get notificationId;
  @override
  @JsonKey(ignore: true)
  $IgnorePressedCopyWith<IgnorePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenPressedCopyWith<$Res>
    implements $AnswerNotificationEventCopyWith<$Res> {
  factory $OpenPressedCopyWith(
          OpenPressed value, $Res Function(OpenPressed) then) =
      _$OpenPressedCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId notificationId});
}

/// @nodoc
class _$OpenPressedCopyWithImpl<$Res>
    extends _$AnswerNotificationEventCopyWithImpl<$Res>
    implements $OpenPressedCopyWith<$Res> {
  _$OpenPressedCopyWithImpl(
      OpenPressed _value, $Res Function(OpenPressed) _then)
      : super(_value, (v) => _then(v as OpenPressed));

  @override
  OpenPressed get _value => super._value as OpenPressed;

  @override
  $Res call({
    Object? notificationId = freezed,
  }) {
    return _then(OpenPressed(
      notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$OpenPressed implements OpenPressed {
  const _$OpenPressed(this.notificationId);

  @override
  final UniqueId notificationId;

  @override
  String toString() {
    return 'AnswerNotificationEvent.openPressed(notificationId: $notificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenPressed &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  @JsonKey(ignore: true)
  @override
  $OpenPressedCopyWith<OpenPressed> get copyWith =>
      _$OpenPressedCopyWithImpl<OpenPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId notificationId) allRightPressed,
    required TResult Function(UniqueId notificationId) ignorePressed,
    required TResult Function(UniqueId notificationId) openPressed,
    required TResult Function(UniqueId notificationId) alarmPressed,
  }) {
    return openPressed(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
  }) {
    return openPressed?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
    required TResult orElse(),
  }) {
    if (openPressed != null) {
      return openPressed(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllRightPressed value) allRightPressed,
    required TResult Function(IgnorePressed value) ignorePressed,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(AlarmPressed value) alarmPressed,
  }) {
    return openPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
  }) {
    return openPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    required TResult orElse(),
  }) {
    if (openPressed != null) {
      return openPressed(this);
    }
    return orElse();
  }
}

abstract class OpenPressed implements AnswerNotificationEvent {
  const factory OpenPressed(UniqueId notificationId) = _$OpenPressed;

  @override
  UniqueId get notificationId;
  @override
  @JsonKey(ignore: true)
  $OpenPressedCopyWith<OpenPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmPressedCopyWith<$Res>
    implements $AnswerNotificationEventCopyWith<$Res> {
  factory $AlarmPressedCopyWith(
          AlarmPressed value, $Res Function(AlarmPressed) then) =
      _$AlarmPressedCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId notificationId});
}

/// @nodoc
class _$AlarmPressedCopyWithImpl<$Res>
    extends _$AnswerNotificationEventCopyWithImpl<$Res>
    implements $AlarmPressedCopyWith<$Res> {
  _$AlarmPressedCopyWithImpl(
      AlarmPressed _value, $Res Function(AlarmPressed) _then)
      : super(_value, (v) => _then(v as AlarmPressed));

  @override
  AlarmPressed get _value => super._value as AlarmPressed;

  @override
  $Res call({
    Object? notificationId = freezed,
  }) {
    return _then(AlarmPressed(
      notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$AlarmPressed implements AlarmPressed {
  const _$AlarmPressed(this.notificationId);

  @override
  final UniqueId notificationId;

  @override
  String toString() {
    return 'AnswerNotificationEvent.alarmPressed(notificationId: $notificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AlarmPressed &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  @JsonKey(ignore: true)
  @override
  $AlarmPressedCopyWith<AlarmPressed> get copyWith =>
      _$AlarmPressedCopyWithImpl<AlarmPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId notificationId) allRightPressed,
    required TResult Function(UniqueId notificationId) ignorePressed,
    required TResult Function(UniqueId notificationId) openPressed,
    required TResult Function(UniqueId notificationId) alarmPressed,
  }) {
    return alarmPressed(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
  }) {
    return alarmPressed?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId notificationId)? allRightPressed,
    TResult Function(UniqueId notificationId)? ignorePressed,
    TResult Function(UniqueId notificationId)? openPressed,
    TResult Function(UniqueId notificationId)? alarmPressed,
    required TResult orElse(),
  }) {
    if (alarmPressed != null) {
      return alarmPressed(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllRightPressed value) allRightPressed,
    required TResult Function(IgnorePressed value) ignorePressed,
    required TResult Function(OpenPressed value) openPressed,
    required TResult Function(AlarmPressed value) alarmPressed,
  }) {
    return alarmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
  }) {
    return alarmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllRightPressed value)? allRightPressed,
    TResult Function(IgnorePressed value)? ignorePressed,
    TResult Function(OpenPressed value)? openPressed,
    TResult Function(AlarmPressed value)? alarmPressed,
    required TResult orElse(),
  }) {
    if (alarmPressed != null) {
      return alarmPressed(this);
    }
    return orElse();
  }
}

abstract class AlarmPressed implements AnswerNotificationEvent {
  const factory AlarmPressed(UniqueId notificationId) = _$AlarmPressed;

  @override
  UniqueId get notificationId;
  @override
  @JsonKey(ignore: true)
  $AlarmPressedCopyWith<AlarmPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AnswerNotificationStateTearOff {
  const _$AnswerNotificationStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Success success(Notification notification) {
    return Success(
      notification,
    );
  }

  Failure failure(NotificationFailures failure) {
    return Failure(
      failure,
    );
  }
}

/// @nodoc
const $AnswerNotificationState = _$AnswerNotificationStateTearOff();

/// @nodoc
mixin _$AnswerNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notification) success,
    required TResult Function(NotificationFailures failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerNotificationStateCopyWith<$Res> {
  factory $AnswerNotificationStateCopyWith(AnswerNotificationState value,
          $Res Function(AnswerNotificationState) then) =
      _$AnswerNotificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnswerNotificationStateCopyWithImpl<$Res>
    implements $AnswerNotificationStateCopyWith<$Res> {
  _$AnswerNotificationStateCopyWithImpl(this._value, this._then);

  final AnswerNotificationState _value;
  // ignore: unused_field
  final $Res Function(AnswerNotificationState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$AnswerNotificationStateCopyWithImpl<$Res>
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
    return 'AnswerNotificationState.initial()';
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
    required TResult Function() loading,
    required TResult Function(Notification notification) success,
    required TResult Function(NotificationFailures failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AnswerNotificationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$AnswerNotificationStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'AnswerNotificationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notification) success,
    required TResult Function(NotificationFailures failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AnswerNotificationState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
  $Res call({Notification notification});

  $NotificationCopyWith<$Res> get notification;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res>
    extends _$AnswerNotificationStateCopyWithImpl<$Res>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(Success _value, $Res Function(Success) _then)
      : super(_value, (v) => _then(v as Success));

  @override
  Success get _value => super._value as Success;

  @override
  $Res call({
    Object? notification = freezed,
  }) {
    return _then(Success(
      notification == freezed
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as Notification,
    ));
  }

  @override
  $NotificationCopyWith<$Res> get notification {
    return $NotificationCopyWith<$Res>(_value.notification, (value) {
      return _then(_value.copyWith(notification: value));
    });
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(this.notification);

  @override
  final Notification notification;

  @override
  String toString() {
    return 'AnswerNotificationState.success(notification: $notification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<Success> get copyWith =>
      _$SuccessCopyWithImpl<Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notification) success,
    required TResult Function(NotificationFailures failure) failure,
  }) {
    return success(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
  }) {
    return success?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements AnswerNotificationState {
  const factory Success(Notification notification) = _$Success;

  Notification get notification;
  @JsonKey(ignore: true)
  $SuccessCopyWith<Success> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({NotificationFailures failure});

  $NotificationFailuresCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res>
    extends _$AnswerNotificationStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as NotificationFailures,
    ));
  }

  @override
  $NotificationFailuresCopyWith<$Res> get failure {
    return $NotificationFailuresCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.failure);

  @override
  final NotificationFailures failure;

  @override
  String toString() {
    return 'AnswerNotificationState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Notification notification) success,
    required TResult Function(NotificationFailures failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Notification notification)? success,
    TResult Function(NotificationFailures failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements AnswerNotificationState {
  const factory Failure(NotificationFailures failure) = _$Failure;

  NotificationFailures get failure;
  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}
