// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddUserEventTearOff {
  const _$AddUserEventTearOff();

  NameChanged nameChanged(String nameStr) {
    return NameChanged(
      nameStr,
    );
  }

  TypeChanged typeChanged(String typeStr) {
    return TypeChanged(
      typeStr,
    );
  }

  NumberOfImagesChanged numberOfImagesChanged(List<XFile> images) {
    return NumberOfImagesChanged(
      images,
    );
  }

  AddUserPressed addUserPressed() {
    return const AddUserPressed();
  }
}

/// @nodoc
const $AddUserEvent = _$AddUserEventTearOff();

/// @nodoc
mixin _$AddUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(List<XFile> images) numberOfImagesChanged,
    required TResult Function() addUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(NumberOfImagesChanged value)
        numberOfImagesChanged,
    required TResult Function(AddUserPressed value) addUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserEventCopyWith<$Res> {
  factory $AddUserEventCopyWith(
          AddUserEvent value, $Res Function(AddUserEvent) then) =
      _$AddUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserEventCopyWithImpl<$Res> implements $AddUserEventCopyWith<$Res> {
  _$AddUserEventCopyWithImpl(this._value, this._then);

  final AddUserEvent _value;
  // ignore: unused_field
  final $Res Function(AddUserEvent) _then;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$AddUserEventCopyWithImpl<$Res>
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
    return 'AddUserEvent.nameChanged(nameStr: $nameStr)';
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
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(List<XFile> images) numberOfImagesChanged,
    required TResult Function() addUserPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
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
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(NumberOfImagesChanged value)
        numberOfImagesChanged,
    required TResult Function(AddUserPressed value) addUserPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements AddUserEvent {
  const factory NameChanged(String nameStr) = _$NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
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
class _$TypeChangedCopyWithImpl<$Res> extends _$AddUserEventCopyWithImpl<$Res>
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
    return 'AddUserEvent.typeChanged(typeStr: $typeStr)';
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
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(List<XFile> images) numberOfImagesChanged,
    required TResult Function() addUserPressed,
  }) {
    return typeChanged(typeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
  }) {
    return typeChanged?.call(typeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
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
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(NumberOfImagesChanged value)
        numberOfImagesChanged,
    required TResult Function(AddUserPressed value) addUserPressed,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class TypeChanged implements AddUserEvent {
  const factory TypeChanged(String typeStr) = _$TypeChanged;

  String get typeStr;
  @JsonKey(ignore: true)
  $TypeChangedCopyWith<TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberOfImagesChangedCopyWith<$Res> {
  factory $NumberOfImagesChangedCopyWith(NumberOfImagesChanged value,
          $Res Function(NumberOfImagesChanged) then) =
      _$NumberOfImagesChangedCopyWithImpl<$Res>;
  $Res call({List<XFile> images});
}

/// @nodoc
class _$NumberOfImagesChangedCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res>
    implements $NumberOfImagesChangedCopyWith<$Res> {
  _$NumberOfImagesChangedCopyWithImpl(
      NumberOfImagesChanged _value, $Res Function(NumberOfImagesChanged) _then)
      : super(_value, (v) => _then(v as NumberOfImagesChanged));

  @override
  NumberOfImagesChanged get _value => super._value as NumberOfImagesChanged;

  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(NumberOfImagesChanged(
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
    ));
  }
}

/// @nodoc

class _$NumberOfImagesChanged implements NumberOfImagesChanged {
  const _$NumberOfImagesChanged(this.images);

  @override
  final List<XFile> images;

  @override
  String toString() {
    return 'AddUserEvent.numberOfImagesChanged(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NumberOfImagesChanged &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(images));

  @JsonKey(ignore: true)
  @override
  $NumberOfImagesChangedCopyWith<NumberOfImagesChanged> get copyWith =>
      _$NumberOfImagesChangedCopyWithImpl<NumberOfImagesChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(List<XFile> images) numberOfImagesChanged,
    required TResult Function() addUserPressed,
  }) {
    return numberOfImagesChanged(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
  }) {
    return numberOfImagesChanged?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
    required TResult orElse(),
  }) {
    if (numberOfImagesChanged != null) {
      return numberOfImagesChanged(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(NumberOfImagesChanged value)
        numberOfImagesChanged,
    required TResult Function(AddUserPressed value) addUserPressed,
  }) {
    return numberOfImagesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
  }) {
    return numberOfImagesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
    required TResult orElse(),
  }) {
    if (numberOfImagesChanged != null) {
      return numberOfImagesChanged(this);
    }
    return orElse();
  }
}

abstract class NumberOfImagesChanged implements AddUserEvent {
  const factory NumberOfImagesChanged(List<XFile> images) =
      _$NumberOfImagesChanged;

  List<XFile> get images;
  @JsonKey(ignore: true)
  $NumberOfImagesChangedCopyWith<NumberOfImagesChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserPressedCopyWith<$Res> {
  factory $AddUserPressedCopyWith(
          AddUserPressed value, $Res Function(AddUserPressed) then) =
      _$AddUserPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserPressedCopyWithImpl<$Res>
    extends _$AddUserEventCopyWithImpl<$Res>
    implements $AddUserPressedCopyWith<$Res> {
  _$AddUserPressedCopyWithImpl(
      AddUserPressed _value, $Res Function(AddUserPressed) _then)
      : super(_value, (v) => _then(v as AddUserPressed));

  @override
  AddUserPressed get _value => super._value as AddUserPressed;
}

/// @nodoc

class _$AddUserPressed implements AddUserPressed {
  const _$AddUserPressed();

  @override
  String toString() {
    return 'AddUserEvent.addUserPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddUserPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String typeStr) typeChanged,
    required TResult Function(List<XFile> images) numberOfImagesChanged,
    required TResult Function() addUserPressed,
  }) {
    return addUserPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
  }) {
    return addUserPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String typeStr)? typeChanged,
    TResult Function(List<XFile> images)? numberOfImagesChanged,
    TResult Function()? addUserPressed,
    required TResult orElse(),
  }) {
    if (addUserPressed != null) {
      return addUserPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(TypeChanged value) typeChanged,
    required TResult Function(NumberOfImagesChanged value)
        numberOfImagesChanged,
    required TResult Function(AddUserPressed value) addUserPressed,
  }) {
    return addUserPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
  }) {
    return addUserPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(TypeChanged value)? typeChanged,
    TResult Function(NumberOfImagesChanged value)? numberOfImagesChanged,
    TResult Function(AddUserPressed value)? addUserPressed,
    required TResult orElse(),
  }) {
    if (addUserPressed != null) {
      return addUserPressed(this);
    }
    return orElse();
  }
}

abstract class AddUserPressed implements AddUserEvent {
  const factory AddUserPressed() = _$AddUserPressed;
}

/// @nodoc
class _$AddUserStateTearOff {
  const _$AddUserStateTearOff();

  EditingForm editingForm(
      {required FullName name,
      required UserType type,
      required Images images,
      required List<bool> displayErrorMessages}) {
    return EditingForm(
      name: name,
      type: type,
      images: images,
      displayErrorMessages: displayErrorMessages,
    );
  }

  UploadingInProgress uploadingInProgress() {
    return const UploadingInProgress();
  }

  AddedSuccess addedSuccess() {
    return const AddedSuccess();
  }

  AddedFailure addedFailure(UsersFailure failure) {
    return AddedFailure(
      failure,
    );
  }
}

/// @nodoc
const $AddUserState = _$AddUserStateTearOff();

/// @nodoc
mixin _$AddUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)
        editingForm,
    required TResult Function() uploadingInProgress,
    required TResult Function() addedSuccess,
    required TResult Function(UsersFailure failure) addedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(UploadingInProgress value) uploadingInProgress,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedFailure value) addedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserStateCopyWith<$Res> {
  factory $AddUserStateCopyWith(
          AddUserState value, $Res Function(AddUserState) then) =
      _$AddUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddUserStateCopyWithImpl<$Res> implements $AddUserStateCopyWith<$Res> {
  _$AddUserStateCopyWithImpl(this._value, this._then);

  final AddUserState _value;
  // ignore: unused_field
  final $Res Function(AddUserState) _then;
}

/// @nodoc
abstract class $EditingFormCopyWith<$Res> {
  factory $EditingFormCopyWith(
          EditingForm value, $Res Function(EditingForm) then) =
      _$EditingFormCopyWithImpl<$Res>;
  $Res call(
      {FullName name,
      UserType type,
      Images images,
      List<bool> displayErrorMessages});
}

/// @nodoc
class _$EditingFormCopyWithImpl<$Res> extends _$AddUserStateCopyWithImpl<$Res>
    implements $EditingFormCopyWith<$Res> {
  _$EditingFormCopyWithImpl(
      EditingForm _value, $Res Function(EditingForm) _then)
      : super(_value, (v) => _then(v as EditingForm));

  @override
  EditingForm get _value => super._value as EditingForm;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? images = freezed,
    Object? displayErrorMessages = freezed,
  }) {
    return _then(EditingForm(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FullName,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as UserType,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Images,
      displayErrorMessages: displayErrorMessages == freezed
          ? _value.displayErrorMessages
          : displayErrorMessages // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$EditingForm implements EditingForm {
  const _$EditingForm(
      {required this.name,
      required this.type,
      required this.images,
      required this.displayErrorMessages});

  @override
  final FullName name;
  @override
  final UserType type;
  @override
  final Images images;
  @override
  final List<bool> displayErrorMessages;

  @override
  String toString() {
    return 'AddUserState.editingForm(name: $name, type: $type, images: $images, displayErrorMessages: $displayErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditingForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.images, images) || other.images == images) &&
            const DeepCollectionEquality()
                .equals(other.displayErrorMessages, displayErrorMessages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type, images,
      const DeepCollectionEquality().hash(displayErrorMessages));

  @JsonKey(ignore: true)
  @override
  $EditingFormCopyWith<EditingForm> get copyWith =>
      _$EditingFormCopyWithImpl<EditingForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)
        editingForm,
    required TResult Function() uploadingInProgress,
    required TResult Function() addedSuccess,
    required TResult Function(UsersFailure failure) addedFailure,
  }) {
    return editingForm(name, type, images, displayErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
  }) {
    return editingForm?.call(name, type, images, displayErrorMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
    required TResult orElse(),
  }) {
    if (editingForm != null) {
      return editingForm(name, type, images, displayErrorMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(UploadingInProgress value) uploadingInProgress,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedFailure value) addedFailure,
  }) {
    return editingForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
  }) {
    return editingForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
    required TResult orElse(),
  }) {
    if (editingForm != null) {
      return editingForm(this);
    }
    return orElse();
  }
}

abstract class EditingForm implements AddUserState {
  const factory EditingForm(
      {required FullName name,
      required UserType type,
      required Images images,
      required List<bool> displayErrorMessages}) = _$EditingForm;

  FullName get name;
  UserType get type;
  Images get images;
  List<bool> get displayErrorMessages;
  @JsonKey(ignore: true)
  $EditingFormCopyWith<EditingForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadingInProgressCopyWith<$Res> {
  factory $UploadingInProgressCopyWith(
          UploadingInProgress value, $Res Function(UploadingInProgress) then) =
      _$UploadingInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadingInProgressCopyWithImpl<$Res>
    extends _$AddUserStateCopyWithImpl<$Res>
    implements $UploadingInProgressCopyWith<$Res> {
  _$UploadingInProgressCopyWithImpl(
      UploadingInProgress _value, $Res Function(UploadingInProgress) _then)
      : super(_value, (v) => _then(v as UploadingInProgress));

  @override
  UploadingInProgress get _value => super._value as UploadingInProgress;
}

/// @nodoc

class _$UploadingInProgress implements UploadingInProgress {
  const _$UploadingInProgress();

  @override
  String toString() {
    return 'AddUserState.uploadingInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UploadingInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)
        editingForm,
    required TResult Function() uploadingInProgress,
    required TResult Function() addedSuccess,
    required TResult Function(UsersFailure failure) addedFailure,
  }) {
    return uploadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
  }) {
    return uploadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
    required TResult orElse(),
  }) {
    if (uploadingInProgress != null) {
      return uploadingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(UploadingInProgress value) uploadingInProgress,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedFailure value) addedFailure,
  }) {
    return uploadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
  }) {
    return uploadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
    required TResult orElse(),
  }) {
    if (uploadingInProgress != null) {
      return uploadingInProgress(this);
    }
    return orElse();
  }
}

abstract class UploadingInProgress implements AddUserState {
  const factory UploadingInProgress() = _$UploadingInProgress;
}

/// @nodoc
abstract class $AddedSuccessCopyWith<$Res> {
  factory $AddedSuccessCopyWith(
          AddedSuccess value, $Res Function(AddedSuccess) then) =
      _$AddedSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddedSuccessCopyWithImpl<$Res> extends _$AddUserStateCopyWithImpl<$Res>
    implements $AddedSuccessCopyWith<$Res> {
  _$AddedSuccessCopyWithImpl(
      AddedSuccess _value, $Res Function(AddedSuccess) _then)
      : super(_value, (v) => _then(v as AddedSuccess));

  @override
  AddedSuccess get _value => super._value as AddedSuccess;
}

/// @nodoc

class _$AddedSuccess implements AddedSuccess {
  const _$AddedSuccess();

  @override
  String toString() {
    return 'AddUserState.addedSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddedSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)
        editingForm,
    required TResult Function() uploadingInProgress,
    required TResult Function() addedSuccess,
    required TResult Function(UsersFailure failure) addedFailure,
  }) {
    return addedSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
  }) {
    return addedSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
    required TResult orElse(),
  }) {
    if (addedSuccess != null) {
      return addedSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(UploadingInProgress value) uploadingInProgress,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedFailure value) addedFailure,
  }) {
    return addedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
  }) {
    return addedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
    required TResult orElse(),
  }) {
    if (addedSuccess != null) {
      return addedSuccess(this);
    }
    return orElse();
  }
}

abstract class AddedSuccess implements AddUserState {
  const factory AddedSuccess() = _$AddedSuccess;
}

/// @nodoc
abstract class $AddedFailureCopyWith<$Res> {
  factory $AddedFailureCopyWith(
          AddedFailure value, $Res Function(AddedFailure) then) =
      _$AddedFailureCopyWithImpl<$Res>;
  $Res call({UsersFailure failure});

  $UsersFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$AddedFailureCopyWithImpl<$Res> extends _$AddUserStateCopyWithImpl<$Res>
    implements $AddedFailureCopyWith<$Res> {
  _$AddedFailureCopyWithImpl(
      AddedFailure _value, $Res Function(AddedFailure) _then)
      : super(_value, (v) => _then(v as AddedFailure));

  @override
  AddedFailure get _value => super._value as AddedFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(AddedFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as UsersFailure,
    ));
  }

  @override
  $UsersFailureCopyWith<$Res> get failure {
    return $UsersFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$AddedFailure implements AddedFailure {
  const _$AddedFailure(this.failure);

  @override
  final UsersFailure failure;

  @override
  String toString() {
    return 'AddUserState.addedFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddedFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $AddedFailureCopyWith<AddedFailure> get copyWith =>
      _$AddedFailureCopyWithImpl<AddedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)
        editingForm,
    required TResult Function() uploadingInProgress,
    required TResult Function() addedSuccess,
    required TResult Function(UsersFailure failure) addedFailure,
  }) {
    return addedFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
  }) {
    return addedFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FullName name, UserType type, Images images,
            List<bool> displayErrorMessages)?
        editingForm,
    TResult Function()? uploadingInProgress,
    TResult Function()? addedSuccess,
    TResult Function(UsersFailure failure)? addedFailure,
    required TResult orElse(),
  }) {
    if (addedFailure != null) {
      return addedFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditingForm value) editingForm,
    required TResult Function(UploadingInProgress value) uploadingInProgress,
    required TResult Function(AddedSuccess value) addedSuccess,
    required TResult Function(AddedFailure value) addedFailure,
  }) {
    return addedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
  }) {
    return addedFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditingForm value)? editingForm,
    TResult Function(UploadingInProgress value)? uploadingInProgress,
    TResult Function(AddedSuccess value)? addedSuccess,
    TResult Function(AddedFailure value)? addedFailure,
    required TResult orElse(),
  }) {
    if (addedFailure != null) {
      return addedFailure(this);
    }
    return orElse();
  }
}

abstract class AddedFailure implements AddUserState {
  const factory AddedFailure(UsersFailure failure) = _$AddedFailure;

  UsersFailure get failure;
  @JsonKey(ignore: true)
  $AddedFailureCopyWith<AddedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
