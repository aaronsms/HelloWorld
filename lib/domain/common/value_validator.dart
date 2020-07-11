import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'failure.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (RegExp(emailRegex).hasMatch(input)) {
    return Right(input);
  }
  return input.isEmpty
      ? const Left(ValueFailure.empty())
      : Left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 8) {
    return Right(input);
  }
  return input.isEmpty
      ? const Left(ValueFailure.empty())
      : Left(ValueFailure.shortPassword(failedValue: input));
}

Either<ValueFailure<int>, int> validateAge(int input) {
  if (input >= 18) {
    return Right(input);
  }
  return input == -1
      ? const Left(ValueFailure.empty())
      : Left(ValueFailure.invalidAge(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  return input.isEmpty
      ? const Left(ValueFailure.empty())
      : Right(input);
}

Either<ValueFailure<File>, File> validateFilePath(String input) {
  try {
    return Right(File(input));
  } on FileSystemException {
    return Left(ValueFailure.badFilePath(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateProficiency(String str) {
  return LanguageProficiency.proficiencies.contains(str)
      ? right(str)
      : left(ValueFailure.invalidProficiency(failedValue: str));
}