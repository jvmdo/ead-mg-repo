import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidNftAnswer({
    required T failedValue,
  }) = InvalidNftAnswer<T>;

  const factory ValueFailure.invalidUrl({
    required T failedValue,
  }) = InvalidUrl<T>;

  const factory ValueFailure.invalidNumberOfImages({
    required T failedValue,
  }) = InvalidNumberOfImages<T>;

  const factory ValueFailure.invalidUserType({
    required T failedValue,
  }) = InvalidUserType<T>;

  const factory ValueFailure.invalidName({
    required T failedValue,
  }) = InvalidName<T>;

  const factory ValueFailure.invalidDateString({
    required T failedValue,
  }) = InvalidDateString<T>;

  const factory ValueFailure.invalidCode({
    required T failedValue,
  }) = InvalidCode<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
}
