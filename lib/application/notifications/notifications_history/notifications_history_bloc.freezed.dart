// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifications_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationsHistoryEventTearOff {
  const _$NotificationsHistoryEventTearOff();

  _Started started() {
    return const _Started();
  }

  NotificationsReceived notificationsReceived(
      Either<NotificationFailures, List<Notification>> failureOrNotifications) {
    return NotificationsReceived(
      failureOrNotifications,
    );
  }

  QueryNotificationsByName queryNotificationsByName(String? queryName) {
    return QueryNotificationsByName(
      queryName,
    );
  }

  QueryNotificationsByAnswer queryNotificationsByAnswer(String queryAnswer) {
    return QueryNotificationsByAnswer(
      queryAnswer,
    );
  }
}

/// @nodoc
const $NotificationsHistoryEvent = _$NotificationsHistoryEventTearOff();

/// @nodoc
mixin _$NotificationsHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)
        notificationsReceived,
    required TResult Function(String? queryName) queryNotificationsByName,
    required TResult Function(String queryAnswer) queryNotificationsByAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NotificationsReceived value)
        notificationsReceived,
    required TResult Function(QueryNotificationsByName value)
        queryNotificationsByName,
    required TResult Function(QueryNotificationsByAnswer value)
        queryNotificationsByAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsHistoryEventCopyWith<$Res> {
  factory $NotificationsHistoryEventCopyWith(NotificationsHistoryEvent value,
          $Res Function(NotificationsHistoryEvent) then) =
      _$NotificationsHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsHistoryEventCopyWithImpl<$Res>
    implements $NotificationsHistoryEventCopyWith<$Res> {
  _$NotificationsHistoryEventCopyWithImpl(this._value, this._then);

  final NotificationsHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsHistoryEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$NotificationsHistoryEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NotificationsHistoryEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)
        notificationsReceived,
    required TResult Function(String? queryName) queryNotificationsByName,
    required TResult Function(String queryAnswer) queryNotificationsByAnswer,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NotificationsReceived value)
        notificationsReceived,
    required TResult Function(QueryNotificationsByName value)
        queryNotificationsByName,
    required TResult Function(QueryNotificationsByAnswer value)
        queryNotificationsByAnswer,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NotificationsHistoryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $NotificationsReceivedCopyWith<$Res> {
  factory $NotificationsReceivedCopyWith(NotificationsReceived value,
          $Res Function(NotificationsReceived) then) =
      _$NotificationsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<NotificationFailures, List<Notification>>
          failureOrNotifications});
}

/// @nodoc
class _$NotificationsReceivedCopyWithImpl<$Res>
    extends _$NotificationsHistoryEventCopyWithImpl<$Res>
    implements $NotificationsReceivedCopyWith<$Res> {
  _$NotificationsReceivedCopyWithImpl(
      NotificationsReceived _value, $Res Function(NotificationsReceived) _then)
      : super(_value, (v) => _then(v as NotificationsReceived));

  @override
  NotificationsReceived get _value => super._value as NotificationsReceived;

  @override
  $Res call({
    Object? failureOrNotifications = freezed,
  }) {
    return _then(NotificationsReceived(
      failureOrNotifications == freezed
          ? _value.failureOrNotifications
          : failureOrNotifications // ignore: cast_nullable_to_non_nullable
              as Either<NotificationFailures, List<Notification>>,
    ));
  }
}

/// @nodoc

class _$NotificationsReceived implements NotificationsReceived {
  const _$NotificationsReceived(this.failureOrNotifications);

  @override
  final Either<NotificationFailures, List<Notification>> failureOrNotifications;

  @override
  String toString() {
    return 'NotificationsHistoryEvent.notificationsReceived(failureOrNotifications: $failureOrNotifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationsReceived &&
            (identical(other.failureOrNotifications, failureOrNotifications) ||
                other.failureOrNotifications == failureOrNotifications));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrNotifications);

  @JsonKey(ignore: true)
  @override
  $NotificationsReceivedCopyWith<NotificationsReceived> get copyWith =>
      _$NotificationsReceivedCopyWithImpl<NotificationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)
        notificationsReceived,
    required TResult Function(String? queryName) queryNotificationsByName,
    required TResult Function(String queryAnswer) queryNotificationsByAnswer,
  }) {
    return notificationsReceived(failureOrNotifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
  }) {
    return notificationsReceived?.call(failureOrNotifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
    required TResult orElse(),
  }) {
    if (notificationsReceived != null) {
      return notificationsReceived(failureOrNotifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NotificationsReceived value)
        notificationsReceived,
    required TResult Function(QueryNotificationsByName value)
        queryNotificationsByName,
    required TResult Function(QueryNotificationsByAnswer value)
        queryNotificationsByAnswer,
  }) {
    return notificationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
  }) {
    return notificationsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
    required TResult orElse(),
  }) {
    if (notificationsReceived != null) {
      return notificationsReceived(this);
    }
    return orElse();
  }
}

abstract class NotificationsReceived implements NotificationsHistoryEvent {
  const factory NotificationsReceived(
      Either<NotificationFailures, List<Notification>>
          failureOrNotifications) = _$NotificationsReceived;

  Either<NotificationFailures, List<Notification>> get failureOrNotifications;
  @JsonKey(ignore: true)
  $NotificationsReceivedCopyWith<NotificationsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryNotificationsByNameCopyWith<$Res> {
  factory $QueryNotificationsByNameCopyWith(QueryNotificationsByName value,
          $Res Function(QueryNotificationsByName) then) =
      _$QueryNotificationsByNameCopyWithImpl<$Res>;
  $Res call({String? queryName});
}

/// @nodoc
class _$QueryNotificationsByNameCopyWithImpl<$Res>
    extends _$NotificationsHistoryEventCopyWithImpl<$Res>
    implements $QueryNotificationsByNameCopyWith<$Res> {
  _$QueryNotificationsByNameCopyWithImpl(QueryNotificationsByName _value,
      $Res Function(QueryNotificationsByName) _then)
      : super(_value, (v) => _then(v as QueryNotificationsByName));

  @override
  QueryNotificationsByName get _value =>
      super._value as QueryNotificationsByName;

  @override
  $Res call({
    Object? queryName = freezed,
  }) {
    return _then(QueryNotificationsByName(
      queryName == freezed
          ? _value.queryName
          : queryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$QueryNotificationsByName implements QueryNotificationsByName {
  const _$QueryNotificationsByName(this.queryName);

  @override
  final String? queryName;

  @override
  String toString() {
    return 'NotificationsHistoryEvent.queryNotificationsByName(queryName: $queryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueryNotificationsByName &&
            (identical(other.queryName, queryName) ||
                other.queryName == queryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryName);

  @JsonKey(ignore: true)
  @override
  $QueryNotificationsByNameCopyWith<QueryNotificationsByName> get copyWith =>
      _$QueryNotificationsByNameCopyWithImpl<QueryNotificationsByName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)
        notificationsReceived,
    required TResult Function(String? queryName) queryNotificationsByName,
    required TResult Function(String queryAnswer) queryNotificationsByAnswer,
  }) {
    return queryNotificationsByName(queryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
  }) {
    return queryNotificationsByName?.call(queryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
    required TResult orElse(),
  }) {
    if (queryNotificationsByName != null) {
      return queryNotificationsByName(queryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NotificationsReceived value)
        notificationsReceived,
    required TResult Function(QueryNotificationsByName value)
        queryNotificationsByName,
    required TResult Function(QueryNotificationsByAnswer value)
        queryNotificationsByAnswer,
  }) {
    return queryNotificationsByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
  }) {
    return queryNotificationsByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
    required TResult orElse(),
  }) {
    if (queryNotificationsByName != null) {
      return queryNotificationsByName(this);
    }
    return orElse();
  }
}

abstract class QueryNotificationsByName implements NotificationsHistoryEvent {
  const factory QueryNotificationsByName(String? queryName) =
      _$QueryNotificationsByName;

  String? get queryName;
  @JsonKey(ignore: true)
  $QueryNotificationsByNameCopyWith<QueryNotificationsByName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryNotificationsByAnswerCopyWith<$Res> {
  factory $QueryNotificationsByAnswerCopyWith(QueryNotificationsByAnswer value,
          $Res Function(QueryNotificationsByAnswer) then) =
      _$QueryNotificationsByAnswerCopyWithImpl<$Res>;
  $Res call({String queryAnswer});
}

/// @nodoc
class _$QueryNotificationsByAnswerCopyWithImpl<$Res>
    extends _$NotificationsHistoryEventCopyWithImpl<$Res>
    implements $QueryNotificationsByAnswerCopyWith<$Res> {
  _$QueryNotificationsByAnswerCopyWithImpl(QueryNotificationsByAnswer _value,
      $Res Function(QueryNotificationsByAnswer) _then)
      : super(_value, (v) => _then(v as QueryNotificationsByAnswer));

  @override
  QueryNotificationsByAnswer get _value =>
      super._value as QueryNotificationsByAnswer;

  @override
  $Res call({
    Object? queryAnswer = freezed,
  }) {
    return _then(QueryNotificationsByAnswer(
      queryAnswer == freezed
          ? _value.queryAnswer
          : queryAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryNotificationsByAnswer implements QueryNotificationsByAnswer {
  const _$QueryNotificationsByAnswer(this.queryAnswer);

  @override
  final String queryAnswer;

  @override
  String toString() {
    return 'NotificationsHistoryEvent.queryNotificationsByAnswer(queryAnswer: $queryAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueryNotificationsByAnswer &&
            (identical(other.queryAnswer, queryAnswer) ||
                other.queryAnswer == queryAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, queryAnswer);

  @JsonKey(ignore: true)
  @override
  $QueryNotificationsByAnswerCopyWith<QueryNotificationsByAnswer>
      get copyWith =>
          _$QueryNotificationsByAnswerCopyWithImpl<QueryNotificationsByAnswer>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)
        notificationsReceived,
    required TResult Function(String? queryName) queryNotificationsByName,
    required TResult Function(String queryAnswer) queryNotificationsByAnswer,
  }) {
    return queryNotificationsByAnswer(queryAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
  }) {
    return queryNotificationsByAnswer?.call(queryAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            Either<NotificationFailures, List<Notification>>
                failureOrNotifications)?
        notificationsReceived,
    TResult Function(String? queryName)? queryNotificationsByName,
    TResult Function(String queryAnswer)? queryNotificationsByAnswer,
    required TResult orElse(),
  }) {
    if (queryNotificationsByAnswer != null) {
      return queryNotificationsByAnswer(queryAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(NotificationsReceived value)
        notificationsReceived,
    required TResult Function(QueryNotificationsByName value)
        queryNotificationsByName,
    required TResult Function(QueryNotificationsByAnswer value)
        queryNotificationsByAnswer,
  }) {
    return queryNotificationsByAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
  }) {
    return queryNotificationsByAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(NotificationsReceived value)? notificationsReceived,
    TResult Function(QueryNotificationsByName value)? queryNotificationsByName,
    TResult Function(QueryNotificationsByAnswer value)?
        queryNotificationsByAnswer,
    required TResult orElse(),
  }) {
    if (queryNotificationsByAnswer != null) {
      return queryNotificationsByAnswer(this);
    }
    return orElse();
  }
}

abstract class QueryNotificationsByAnswer implements NotificationsHistoryEvent {
  const factory QueryNotificationsByAnswer(String queryAnswer) =
      _$QueryNotificationsByAnswer;

  String get queryAnswer;
  @JsonKey(ignore: true)
  $QueryNotificationsByAnswerCopyWith<QueryNotificationsByAnswer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationsHistoryStateTearOff {
  const _$NotificationsHistoryStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadInProgress loadInProgress() {
    return const LoadInProgress();
  }

  LoadSuccess loadSuccess(List<Notification> notifications) {
    return LoadSuccess(
      notifications,
    );
  }

  LoadFailure loadFailure(NotificationFailures failure) {
    return LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $NotificationsHistoryState = _$NotificationsHistoryStateTearOff();

/// @nodoc
mixin _$NotificationsHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(NotificationFailures failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
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
abstract class $NotificationsHistoryStateCopyWith<$Res> {
  factory $NotificationsHistoryStateCopyWith(NotificationsHistoryState value,
          $Res Function(NotificationsHistoryState) then) =
      _$NotificationsHistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationsHistoryStateCopyWithImpl<$Res>
    implements $NotificationsHistoryStateCopyWith<$Res> {
  _$NotificationsHistoryStateCopyWithImpl(this._value, this._then);

  final NotificationsHistoryState _value;
  // ignore: unused_field
  final $Res Function(NotificationsHistoryState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$NotificationsHistoryStateCopyWithImpl<$Res>
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
    return 'NotificationsHistoryState.initial()';
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
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(NotificationFailures failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
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

abstract class Initial implements NotificationsHistoryState {
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
    extends _$NotificationsHistoryStateCopyWithImpl<$Res>
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
    return 'NotificationsHistoryState.loadInProgress()';
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
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(NotificationFailures failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
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

abstract class LoadInProgress implements NotificationsHistoryState {
  const factory LoadInProgress() = _$LoadInProgress;
}

/// @nodoc
abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Notification> notifications});
}

/// @nodoc
class _$LoadSuccessCopyWithImpl<$Res>
    extends _$NotificationsHistoryStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(LoadSuccess(
      notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notification>,
    ));
  }
}

/// @nodoc

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.notifications);

  @override
  final List<Notification> notifications;

  @override
  String toString() {
    return 'NotificationsHistoryState.loadSuccess(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(notifications));

  @JsonKey(ignore: true)
  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(NotificationFailures failure) loadFailure,
  }) {
    return loadSuccess(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
  }) {
    return loadSuccess?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(notifications);
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

abstract class LoadSuccess implements NotificationsHistoryState {
  const factory LoadSuccess(List<Notification> notifications) = _$LoadSuccess;

  List<Notification> get notifications;
  @JsonKey(ignore: true)
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({NotificationFailures failure});

  $NotificationFailuresCopyWith<$Res> get failure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$NotificationsHistoryStateCopyWithImpl<$Res>
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

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.failure);

  @override
  final NotificationFailures failure;

  @override
  String toString() {
    return 'NotificationsHistoryState.loadFailure(failure: $failure)';
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
    required TResult Function(List<Notification> notifications) loadSuccess,
    required TResult Function(NotificationFailures failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
  }) {
    return loadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Notification> notifications)? loadSuccess,
    TResult Function(NotificationFailures failure)? loadFailure,
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

abstract class LoadFailure implements NotificationsHistoryState {
  const factory LoadFailure(NotificationFailures failure) = _$LoadFailure;

  NotificationFailures get failure;
  @JsonKey(ignore: true)
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
