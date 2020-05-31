import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/core/failure.dart';
import 'package:helloworld/domain/core/value_objects.dart';
import 'package:helloworld/domain/core/value_validator.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}