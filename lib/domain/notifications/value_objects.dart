import 'package:dartz/dartz.dart';
import 'package:ead_app/domain/core/a_value_objects.dart';
import 'package:ead_app/domain/core/value_failures.dart';
import 'package:ead_app/domain/core/value_validators.dart';

class NftAnswer extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NftAnswer(String input) {
    return NftAnswer._(validateNftAnswer(input.toLowerCase()));
  }

  const NftAnswer._(this.value);
}
