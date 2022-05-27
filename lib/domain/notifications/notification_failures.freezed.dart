// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationFailuresTearOff {
  const _$NotificationFailuresTearOff();

  CurrentUserUnavailable currentUserUnavailable() {
    return const CurrentUserUnavailable();
  }

  QueryError queryError() {
    return const QueryError();
  }

  ServerError serverError() {
    return const ServerError();
  }
}

/// @nodoc
const $NotificationFailures = _$NotificationFailuresTearOff();

/// @nodoc
mixin _$NotificationFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserUnavailable,
    required TResult Function() queryError,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentUserUnavailable,
    TResult Function()? queryError,
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserUnavailable,
    TResult Function()? queryError,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentUserUnavailable value)
        currentUserUnavailable,
    required TResult Function(QueryError value) queryError,
    required TResult Function(ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrentUserUnavailable value)? currentUserUnavailable,
    TResult Function(QueryError value)? queryError,
    TResult Function(ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentUserUnavailable value)? currentUserUnavailable,
    TResult Function(QueryError value)? queryError,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationFailuresCopyWith<$Res> {
  factory $NotificationFailuresCopyWith(NotificationFailures value,
          $Res Function(NotificationFailures) then) =
      _$NotificationFailuresCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationFailuresCopyWithImpl<$Res>
    implements $NotificationFailuresCopyWith<$Res> {
  _$NotificationFailuresCopyWithImpl(this._value, this._then);

  final NotificationFailures _value;
  // ignore: unused_field
  final $Res Function(NotificationFailures) _then;
}

/// @nodoc
abstract class $CurrentUserUnavailableCopyWith<$Res> {
  factory $CurrentUserUnavailableCopyWith(CurrentUserUnavailable value,
          $Res Function(CurrentUserUnavailable) then) =
      _$CurrentUserUnavailableCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentUserUnavailableCopyWithImpl<$Res>
    extends _$NotificationFailuresCopyWithImpl<$Res>
    implements $CurrentUserUnavailableCopyWith<$Res> {
  _$CurrentUserUnavailableCopyWithImpl(CurrentUserUnavailable _value,
      $Res Function(CurrentUserUnavailable) _then)
      : super(_value, (v) => _then(v as CurrentUserUnavailable));

  @override
  CurrentUserUnavailable get _value => super._value as CurrentUserUnavailable;
}

/// @nodoc

class _$CurrentUserUnavailable implements CurrentUserUnavailable {
  const _$CurrentUserUnavailable();

  @override
  String toString() {
    return 'NotificationFailures.currentUserUnavailable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CurrentUserUnavailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserUnavailable,
    required TResult Function() queryError,
    required TResult Function() serverError,
  }) {
    return currentUserUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentUserUnavailable,
    TResult Function()? queryError,
    TResult Function()? serverError,
  }) {
    return currentUserUnavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserUnavailable,
    TResult Function()? queryError,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (currentUserUnavailable != null) {
      return currentUserUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentUserUnavailable value)
        currentUserUnavailable,
    required TResult Function(QueryError value) queryError,
    required TResult Function(ServerError value) serverError,
  }) {
    return currentUserUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrentUserUnavailable value)? currentUserUnavailable,
    TResult Function(QueryError value)? queryError,
    TResult Function(ServerError value)? serverError,
  }) {
    return currentUserUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentUserUnavailable value)? currentUserUnavailable,
    TResult Function(QueryError value)? queryError,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (currentUserUnavailable != null) {
      return currentUserUnavailable(this);
    }
    return orElse();
  }
}

abstract class CurrentUserUnavailable implements NotificationFailures {
  const factory CurrentUserUnavailable() = _$CurrentUserUnavailable;
}

/// @nodoc
abstract class $QueryErrorCopyWith<$Res> {
  factory $QueryErrorCopyWith(
          QueryError value, $Res Function(QueryError) then) =
      _$QueryErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$QueryErrorCopyWithImpl<$Res>
    extends _$NotificationFailuresCopyWithImpl<$Res>
    implements $QueryErrorCopyWith<$Res> {
  _$QueryErrorCopyWithImpl(QueryError _value, $Res Function(QueryError) _then)
      : super(_value, (v) => _then(v as QueryError));

  @override
  QueryError get _value => super._value as QueryError;
}

/// @nodoc

class _$QueryError implements QueryError {
  const _$QueryError();

  @override
  String toString() {
    return 'NotificationFailures.queryError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QueryError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserUnavailable,
    required TResult Function() queryError,
    required TResult Function() serverError,
  }) {
    return queryError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentUserUnavailable,
    TResult Function()? queryError,
    TResult Function()? serverError,
  }) {
    return queryError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserUnavailable,
    TResult Function()? queryError,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (queryError != null) {
      return queryError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentUserUnavailable value)
        currentUserUnavailable,
    required TResult Function(QueryError value) queryError,
    required TResult Function(ServerError value) serverError,
  }) {
    return queryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrentUserUnavailable value)? currentUserUnavailable,
    TResult Function(QueryError value)? queryError,
    TResult Function(ServerError value)? serverError,
  }) {
    return queryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentUserUnavailable value)? currentUserUnavailable,
    TResult Function(QueryError value)? queryError,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (queryError != null) {
      return queryError(this);
    }
    return orElse();
  }
}

abstract class QueryError implements NotificationFailures {
  const factory QueryError() = _$QueryError;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$NotificationFailuresCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'NotificationFailures.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentUserUnavailable,
    required TResult Function() queryError,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? currentUserUnavailable,
    TResult Function()? queryError,
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentUserUnavailable,
    TResult Function()? queryError,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentUserUnavailable value)
        currentUserUnavailable,
    required TResult Function(QueryError value) queryError,
    required TResult Function(ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CurrentUserUnavailable value)? currentUserUnavailable,
    TResult Function(QueryError value)? queryError,
    TResult Function(ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentUserUnavailable value)? currentUserUnavailable,
    TResult Function(QueryError value)? queryError,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements NotificationFailures {
  const factory ServerError() = _$ServerError;
}
