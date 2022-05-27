// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  NameChanged nameChanged(String nameStr) {
    return NameChanged(
      nameStr,
    );
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  TypeChanged typeChanged(String typeStr) {
    return TypeChanged(
      typeStr,
    );
  }

  SyscodeChanged syscodeChanged(String syscodeStr) {
    return SyscodeChanged(
      syscodeStr,
    );
  }

  SucoceChanged sucodeChanged(String sucodeStr) {
    return SucoceChanged(
      sucodeStr,
    );
  }

  ImagePickedChanged imagePickedChanged(List<XFile> imageList) {
    return ImagePickedChanged(
      imageList,
    );
  }

  SignUpWithEmailAndPasswordPressed signUpWithEmailAndPasswordPressed() {
    return const SignUpWithEmailAndPasswordPressed();
  }
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'SignUpEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameChanged &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SignUpEvent {
  const factory NameChanged(String nameStr) = _$NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeChangedCopyWith<$Res> {
  factory $TypeChangedCopyWith(
          TypeChanged value, $Res Function(TypeChanged) then) =
      _$TypeChangedCopyWithImpl<$Res>;
  $Res call({String typeStr});
}

/// @nodoc
class _$TypeChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $TypeChangedCopyWith<$Res> {
  _$TypeChangedCopyWithImpl(
      TypeChanged _value, $Res Function(TypeChanged) _then)
      : super(_value, (v) => _then(v as TypeChanged));

  @override
  TypeChanged get _value => super._value as TypeChanged;

  @override
  $Res call({
    Object? typeStr = freezed,
  }) {
    return _then(TypeChanged(
      typeStr == freezed
          ? _value.typeStr
          : typeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TypeChanged implements TypeChanged {
  const _$TypeChanged(this.typeStr);

  @override
  final String typeStr;

  @override
  String toString() {
    return 'SignUpEvent.typeChanged(typeStr: $typeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeChanged &&
            (identical(other.typeStr, typeStr) || other.typeStr == typeStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeStr);

  @JsonKey(ignore: true)
  @override
  $TypeChangedCopyWith<TypeChanged> get copyWith =>
      _$TypeChangedCopyWithImpl<TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return typeChanged(typeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) {
    return typeChanged?.call(typeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(typeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class TypeChanged implements SignUpEvent {
  const factory TypeChanged(String typeStr) = _$TypeChanged;

  String get typeStr;
  @JsonKey(ignore: true)
  $TypeChangedCopyWith<TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyscodeChangedCopyWith<$Res> {
  factory $SyscodeChangedCopyWith(
          SyscodeChanged value, $Res Function(SyscodeChanged) then) =
      _$SyscodeChangedCopyWithImpl<$Res>;
  $Res call({String syscodeStr});
}

/// @nodoc
class _$SyscodeChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $SyscodeChangedCopyWith<$Res> {
  _$SyscodeChangedCopyWithImpl(
      SyscodeChanged _value, $Res Function(SyscodeChanged) _then)
      : super(_value, (v) => _then(v as SyscodeChanged));

  @override
  SyscodeChanged get _value => super._value as SyscodeChanged;

  @override
  $Res call({
    Object? syscodeStr = freezed,
  }) {
    return _then(SyscodeChanged(
      syscodeStr == freezed
          ? _value.syscodeStr
          : syscodeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SyscodeChanged implements SyscodeChanged {
  const _$SyscodeChanged(this.syscodeStr);

  @override
  final String syscodeStr;

  @override
  String toString() {
    return 'SignUpEvent.syscodeChanged(syscodeStr: $syscodeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SyscodeChanged &&
            (identical(other.syscodeStr, syscodeStr) ||
                other.syscodeStr == syscodeStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, syscodeStr);

  @JsonKey(ignore: true)
  @override
  $SyscodeChangedCopyWith<SyscodeChanged> get copyWith =>
      _$SyscodeChangedCopyWithImpl<SyscodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return syscodeChanged(syscodeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) {
    return syscodeChanged?.call(syscodeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (syscodeChanged != null) {
      return syscodeChanged(syscodeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return syscodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) {
    return syscodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (syscodeChanged != null) {
      return syscodeChanged(this);
    }
    return orElse();
  }
}

abstract class SyscodeChanged implements SignUpEvent {
  const factory SyscodeChanged(String syscodeStr) = _$SyscodeChanged;

  String get syscodeStr;
  @JsonKey(ignore: true)
  $SyscodeChangedCopyWith<SyscodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SucoceChangedCopyWith<$Res> {
  factory $SucoceChangedCopyWith(
          SucoceChanged value, $Res Function(SucoceChanged) then) =
      _$SucoceChangedCopyWithImpl<$Res>;
  $Res call({String sucodeStr});
}

/// @nodoc
class _$SucoceChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
    implements $SucoceChangedCopyWith<$Res> {
  _$SucoceChangedCopyWithImpl(
      SucoceChanged _value, $Res Function(SucoceChanged) _then)
      : super(_value, (v) => _then(v as SucoceChanged));

  @override
  SucoceChanged get _value => super._value as SucoceChanged;

  @override
  $Res call({
    Object? sucodeStr = freezed,
  }) {
    return _then(SucoceChanged(
      sucodeStr == freezed
          ? _value.sucodeStr
          : sucodeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SucoceChanged implements SucoceChanged {
  const _$SucoceChanged(this.sucodeStr);

  @override
  final String sucodeStr;

  @override
  String toString() {
    return 'SignUpEvent.sucodeChanged(sucodeStr: $sucodeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SucoceChanged &&
            (identical(other.sucodeStr, sucodeStr) ||
                other.sucodeStr == sucodeStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sucodeStr);

  @JsonKey(ignore: true)
  @override
  $SucoceChangedCopyWith<SucoceChanged> get copyWith =>
      _$SucoceChangedCopyWithImpl<SucoceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return sucodeChanged(sucodeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) {
    return sucodeChanged?.call(sucodeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (sucodeChanged != null) {
      return sucodeChanged(sucodeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return sucodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) {
    return sucodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (sucodeChanged != null) {
      return sucodeChanged(this);
    }
    return orElse();
  }
}

abstract class SucoceChanged implements SignUpEvent {
  const factory SucoceChanged(String sucodeStr) = _$SucoceChanged;

  String get sucodeStr;
  @JsonKey(ignore: true)
  $SucoceChangedCopyWith<SucoceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagePickedChangedCopyWith<$Res> {
  factory $ImagePickedChangedCopyWith(
          ImagePickedChanged value, $Res Function(ImagePickedChanged) then) =
      _$ImagePickedChangedCopyWithImpl<$Res>;
  $Res call({List<XFile> imageList});
}

/// @nodoc
class _$ImagePickedChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $ImagePickedChangedCopyWith<$Res> {
  _$ImagePickedChangedCopyWithImpl(
      ImagePickedChanged _value, $Res Function(ImagePickedChanged) _then)
      : super(_value, (v) => _then(v as ImagePickedChanged));

  @override
  ImagePickedChanged get _value => super._value as ImagePickedChanged;

  @override
  $Res call({
    Object? imageList = freezed,
  }) {
    return _then(ImagePickedChanged(
      imageList == freezed
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$ImagePickedChanged implements ImagePickedChanged {
  const _$ImagePickedChanged(this.imageList);

  @override
  final List<XFile> imageList;

  @override
  String toString() {
    return 'SignUpEvent.imagePickedChanged(imageList: $imageList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ImagePickedChanged &&
            const DeepCollectionEquality().equals(other.imageList, imageList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(imageList));

  @JsonKey(ignore: true)
  @override
  $ImagePickedChangedCopyWith<ImagePickedChanged> get copyWith =>
      _$ImagePickedChangedCopyWithImpl<ImagePickedChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return imagePickedChanged(imageList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) {
    return imagePickedChanged?.call(imageList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (imagePickedChanged != null) {
      return imagePickedChanged(imageList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return imagePickedChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) {
    return imagePickedChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (imagePickedChanged != null) {
      return imagePickedChanged(this);
    }
    return orElse();
  }
}

abstract class ImagePickedChanged implements SignUpEvent {
  const factory ImagePickedChanged(List<XFile> imageList) =
      _$ImagePickedChanged;

  List<XFile> get imageList;
  @JsonKey(ignore: true)
  $ImagePickedChangedCopyWith<ImagePickedChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignUpWithEmailAndPasswordPressedCopyWith(
          SignUpWithEmailAndPasswordPressed value,
          $Res Function(SignUpWithEmailAndPasswordPressed) then) =
      _$SignUpWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignUpWithEmailAndPasswordPressedCopyWithImpl(
      SignUpWithEmailAndPasswordPressed _value,
      $Res Function(SignUpWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignUpWithEmailAndPasswordPressed));

  @override
  SignUpWithEmailAndPasswordPressed get _value =>
      super._value as SignUpWithEmailAndPasswordPressed;
}

/// @nodoc

class _$SignUpWithEmailAndPasswordPressed
    implements SignUpWithEmailAndPasswordPressed {
  const _$SignUpWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignUpWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(String syscodeStr) syscodeChanged,
    required TResult Function(String sucodeStr) sucodeChanged,
    required TResult Function(List<XFile> imageList) imagePickedChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(String syscodeStr)? syscodeChanged,
    TResult Function(String sucodeStr)? sucodeChanged,
    TResult Function(List<XFile> imageList)? imagePickedChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPasswordPressed != null) {
      return signUpWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(SyscodeChanged value) syscodeChanged,
    required TResult Function(SucoceChanged value) sucodeChanged,
    required TResult Function(ImagePickedChanged value) imagePickedChanged,
    required TResult Function(SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(SyscodeChanged value)? syscodeChanged,
    TResult Function(SucoceChanged value)? sucodeChanged,
    TResult Function(ImagePickedChanged value)? imagePickedChanged,
    TResult Function(SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPasswordPressed != null) {
      return signUpWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpWithEmailAndPasswordPressed implements SignUpEvent {
  const factory SignUpWithEmailAndPasswordPressed() =
      _$SignUpWithEmailAndPasswordPressed;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  EditingForm editingForm(
      {required FullName name,
      required EmailAddress emailAddress,
      required Password password,
      required UserType type,
      required Code syscode,
      required Code sucode,
      required Images images,
      bool displayFailure = false,
      AuthFailure? failure}) {
    return EditingForm(
      name: name,
      emailAddress: emailAddress,
      password: password,
      type: type,
      syscode: syscode,
      sucode: sucode,
      images: images,
      displayFailure: displayFailure,
      failure: failure,
    );
  }

  CreatingInProgress creatingInProgress() {
    return const CreatingInProgress();
  }

  CreatingSuccess creatingSuccess() {
    return const CreatingSuccess();
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)
        editingForm,
    required TResult Function() creatingInProgress,
    required TResult Function() creatingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)?
        editingForm,
    TResult Function()? creatingInProgress,
    TResult Function()? creatingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)?
        editingForm,
    TResult Function()? creatingInProgress,
    TResult Function()? creatingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(CreatingInProgress value) creatingInProgress,
    required TResult Function(CreatingSuccess value) creatingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(CreatingInProgress value)? creatingInProgress,
    TResult Function(CreatingSuccess value)? creatingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(CreatingInProgress value)? creatingInProgress,
    TResult Function(CreatingSuccess value)? creatingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;
}

/// @nodoc
abstract class $EditingFormCopyWith<$Res> {
  factory $EditingFormCopyWith(
          EditingForm value, $Res Function(EditingForm) then) =
      _$EditingFormCopyWithImpl<$Res>;
  $Res call(
      {FullName name,
      EmailAddress emailAddress,
      Password password,
      UserType type,
      Code syscode,
      Code sucode,
      Images images,
      bool displayFailure,
      AuthFailure? failure});

  $AuthFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$EditingFormCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements $EditingFormCopyWith<$Res> {
  _$EditingFormCopyWithImpl(
      EditingForm _value, $Res Function(EditingForm) _then)
      : super(_value, (v) => _then(v as EditingForm));

  @override
  EditingForm get _value => super._value as EditingForm;

  @override
  $Res call({
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? type = freezed,
    Object? syscode = freezed,
    Object? sucode = freezed,
    Object? images = freezed,
    Object? displayFailure = freezed,
    Object? failure = freezed,
  }) {
    return _then(EditingForm(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FullName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      syscode: syscode == freezed
          ? _value.syscode
          : syscode // ignore: cast_nullable_to_non_nullable
              as Code,
      sucode: sucode == freezed
          ? _value.sucode
          : sucode // ignore: cast_nullable_to_non_nullable
              as Code,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images,
      displayFailure: displayFailure == freezed
          ? _value.displayFailure
          : displayFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AuthFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$EditingForm implements EditingForm {
  const _$EditingForm(
      {required this.name,
      required this.emailAddress,
      required this.password,
      required this.type,
      required this.syscode,
      required this.sucode,
      required this.images,
      this.displayFailure = false,
      this.failure});

  @override
  final FullName name;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final UserType type;
  @override
  final Code syscode;
  @override
  final Code sucode;
  @override
  final Images images;
  @JsonKey(defaultValue: false)
  @override
  final bool displayFailure;
  @override
  final AuthFailure? failure;

  @override
  String toString() {
    return 'SignUpState.editingForm(name: $name, emailAddress: $emailAddress, password: $password, type: $type, syscode: $syscode, sucode: $sucode, images: $images, displayFailure: $displayFailure, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditingForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.syscode, syscode) || other.syscode == syscode) &&
            (identical(other.sucode, sucode) || other.sucode == sucode) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.displayFailure, displayFailure) ||
                other.displayFailure == displayFailure) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, emailAddress, password,
      type, syscode, sucode, images, displayFailure, failure);

  @JsonKey(ignore: true)
  @override
  $EditingFormCopyWith<EditingForm> get copyWith =>
      _$EditingFormCopyWithImpl<EditingForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)
        editingForm,
    required TResult Function() creatingInProgress,
    required TResult Function() creatingSuccess,
  }) {
    return editingForm(name, emailAddress, password, type, syscode, sucode,
        images, displayFailure, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)?
        editingForm,
    TResult Function()? creatingInProgress,
    TResult Function()? creatingSuccess,
  }) {
    return editingForm?.call(name, emailAddress, password, type, syscode,
        sucode, images, displayFailure, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)?
        editingForm,
    TResult Function()? creatingInProgress,
    TResult Function()? creatingSuccess,
    required TResult orElse(),
  }) {
    if (editingForm != null) {
      return editingForm(name, emailAddress, password, type, syscode, sucode,
          images, displayFailure, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(CreatingInProgress value) creatingInProgress,
    required TResult Function(CreatingSuccess value) creatingSuccess,
  }) {
    return editingForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(CreatingInProgress value)? creatingInProgress,
    TResult Function(CreatingSuccess value)? creatingSuccess,
  }) {
    return editingForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(CreatingInProgress value)? creatingInProgress,
    TResult Function(CreatingSuccess value)? creatingSuccess,
    required TResult orElse(),
  }) {
    if (editingForm != null) {
      return editingForm(this);
    }
    return orElse();
  }
}

abstract class EditingForm implements SignUpState {
  const factory EditingForm(
      {required FullName name,
      required EmailAddress emailAddress,
      required Password password,
      required UserType type,
      required Code syscode,
      required Code sucode,
      required Images images,
      bool displayFailure,
      AuthFailure? failure}) = _$EditingForm;

  FullName get name;
  EmailAddress get emailAddress;
  Password get password;
  UserType get type;
  Code get syscode;
  Code get sucode;
  Images get images;
  bool get displayFailure;
  AuthFailure? get failure;
  @JsonKey(ignore: true)
  $EditingFormCopyWith<EditingForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatingInProgressCopyWith<$Res> {
  factory $CreatingInProgressCopyWith(
          CreatingInProgress value, $Res Function(CreatingInProgress) then) =
      _$CreatingInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatingInProgressCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $CreatingInProgressCopyWith<$Res> {
  _$CreatingInProgressCopyWithImpl(
      CreatingInProgress _value, $Res Function(CreatingInProgress) _then)
      : super(_value, (v) => _then(v as CreatingInProgress));

  @override
  CreatingInProgress get _value => super._value as CreatingInProgress;
}

/// @nodoc

class _$CreatingInProgress implements CreatingInProgress {
  const _$CreatingInProgress();

  @override
  String toString() {
    return 'SignUpState.creatingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreatingInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)
        editingForm,
    required TResult Function() creatingInProgress,
    required TResult Function() creatingSuccess,
  }) {
    return creatingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)?
        editingForm,
    TResult Function()? creatingInProgress,
    TResult Function()? creatingSuccess,
  }) {
    return creatingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)?
        editingForm,
    TResult Function()? creatingInProgress,
    TResult Function()? creatingSuccess,
    required TResult orElse(),
  }) {
    if (creatingInProgress != null) {
      return creatingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(CreatingInProgress value) creatingInProgress,
    required TResult Function(CreatingSuccess value) creatingSuccess,
  }) {
    return creatingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(CreatingInProgress value)? creatingInProgress,
    TResult Function(CreatingSuccess value)? creatingSuccess,
  }) {
    return creatingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(CreatingInProgress value)? creatingInProgress,
    TResult Function(CreatingSuccess value)? creatingSuccess,
    required TResult orElse(),
  }) {
    if (creatingInProgress != null) {
      return creatingInProgress(this);
    }
    return orElse();
  }
}

abstract class CreatingInProgress implements SignUpState {
  const factory CreatingInProgress() = _$CreatingInProgress;
}

/// @nodoc
abstract class $CreatingSuccessCopyWith<$Res> {
  factory $CreatingSuccessCopyWith(
          CreatingSuccess value, $Res Function(CreatingSuccess) then) =
      _$CreatingSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatingSuccessCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res>
    implements $CreatingSuccessCopyWith<$Res> {
  _$CreatingSuccessCopyWithImpl(
      CreatingSuccess _value, $Res Function(CreatingSuccess) _then)
      : super(_value, (v) => _then(v as CreatingSuccess));

  @override
  CreatingSuccess get _value => super._value as CreatingSuccess;
}

/// @nodoc

class _$CreatingSuccess implements CreatingSuccess {
  const _$CreatingSuccess();

  @override
  String toString() {
    return 'SignUpState.creatingSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreatingSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)
        editingForm,
    required TResult Function() creatingInProgress,
    required TResult Function() creatingSuccess,
  }) {
    return creatingSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)?
        editingForm,
    TResult Function()? creatingInProgress,
    TResult Function()? creatingSuccess,
  }) {
    return creatingSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            FullName name,
            EmailAddress emailAddress,
            Password password,
            UserType type,
            Code syscode,
            Code sucode,
            Images images,
            bool displayFailure,
            AuthFailure? failure)?
        editingForm,
    TResult Function()? creatingInProgress,
    TResult Function()? creatingSuccess,
    required TResult orElse(),
  }) {
    if (creatingSuccess != null) {
      return creatingSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(CreatingInProgress value) creatingInProgress,
    required TResult Function(CreatingSuccess value) creatingSuccess,
  }) {
    return creatingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(CreatingInProgress value)? creatingInProgress,
    TResult Function(CreatingSuccess value)? creatingSuccess,
  }) {
    return creatingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(CreatingInProgress value)? creatingInProgress,
    TResult Function(CreatingSuccess value)? creatingSuccess,
    required TResult orElse(),
  }) {
    if (creatingSuccess != null) {
      return creatingSuccess(this);
    }
    return orElse();
  }
}

abstract class CreatingSuccess implements SignUpState {
  const factory CreatingSuccess() = _$CreatingSuccess;
}
