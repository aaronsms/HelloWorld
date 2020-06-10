import 'package:dartz/dartz.dart';
import 'failure.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  }
  return Left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length > 6) {
    return Right(input);
  }
  return Left(ValueFailure.shortPassword(failedValue: input));
}

Either<ValueFailure<int>, int> validateAge(int input) {
  if (input >= 18) {
    return Right(input);
  }
  return Left(ValueFailure.invalidAge(failedValue: input));
}
