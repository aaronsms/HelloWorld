import 'package:dartz/dartz.dart';
import 'failure.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  }
  return input.isEmpty
      ? const Left(ValueFailure.emptyField())
      : Left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 8) {
    return Right(input);
  }
  return input.isEmpty
      ? const Left(ValueFailure.emptyField())
      : Left(ValueFailure.shortPassword(failedValue: input));
}

Either<ValueFailure<int>, int> validateAge(int input) {
  if (input >= 18) {
    return Right(input);
  }
  return input == -1
      ? const Left(ValueFailure.emptyField())
      : Left(ValueFailure.invalidAge(failedValue: input));
}

Either<ValueFailure<String>, String> validateInput(String input) {
  return input.isEmpty
      ? const Left(ValueFailure.emptyField())
      : Right(input);
}
