import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ead_app/domain/core/value_failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateFullName(String input) {
  const String nameRegex = r"^[^\s]+( [^\s]+)+$";

  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateByName(String input) {
  const String nameRegex = r"^[^\s]+( [^\s]+)+$";

  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  } else if (input == "") {
    return right('-');
  } else {
    return left(ValueFailure.invalidName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCode(String input) {
  const String codeRegex = r"^[0-9a-z]{4}-\b[0-9a-z]{4}$";

  if (input != 'initial') {
    if (RegExp(codeRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(ValueFailure.invalidCode(failedValue: input));
    }
  } else {
    return right('init-ial0');
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDateInfo(int input) {
  final dt = DateTime.fromMillisecondsSinceEpoch(input);

  if (dt.isAfter(DateTime.parse("2021-12-01 00:00:00.000"))) {
    return right(dt);
  } else {
    final failedDate = DateTime.parse("0000-00-00 00:00:00");
    return left(ValueFailure.invalidDateString(failedValue: failedDate));
  }
}

Either<ValueFailure<String>, String> validateUserType(String input) {
  const List<String> userTypes = ['host', 'resident', 'guest'];

  if (userTypes.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUserType(failedValue: input));
  }
}

Either<ValueFailure<List<XFile>>, List<XFile>> validateImages(
  List<XFile> input,
) {
  const int numberOfImages = 10;

  if (input.length == numberOfImages) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNumberOfImages(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePictureUrl(String input) {
  final bool isUrlValid = Uri.parse(input).isAbsolute;

  if (isUrlValid) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUrl(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateNftAnswer(String input) {
  const List<String> answers = ['', 'ok', 'alarm', 'ignore', 'open', '-'];

  if (answers.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidNftAnswer(failedValue: input));
  }
}
