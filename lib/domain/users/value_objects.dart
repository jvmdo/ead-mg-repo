import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';
import 'package:ead_app/domain/core/a_value_objects.dart';
import 'package:ead_app/domain/core/value_failures.dart';
import 'package:ead_app/domain/core/value_validators.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1()));
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(right(uniqueId));
  }

  const UniqueId._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(validateFullName(input));
  }

  const FullName._(this.value);
}

class ByName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ByName(String input) {
    return ByName._(validateByName(input));
  }

  const ByName._(this.value);
}

class Code extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Code(String input) {
    return Code._(validateCode(input));
  }

  const Code._(this.value);
}

class DateInfo extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory DateInfo(int input) {
    return DateInfo._(validateDateInfo(input));
  }

  const DateInfo._(this.value);
}

class UserType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserType(String input) {
    return UserType._(validateUserType(input.toLowerCase()));
  }

  const UserType._(this.value);
}

class PictureUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PictureUrl(String input) {
    return PictureUrl._(
      validatePictureUrl(input),
    );
  }

  const PictureUrl._(this.value);
}

class Images extends ValueObject<List<XFile>> {
  @override
  final Either<ValueFailure<List<XFile>>, List<XFile>> value;

  factory Images(List<XFile> input) {
    return Images._(validateImages(input));
  }

  const Images._(this.value);
}
