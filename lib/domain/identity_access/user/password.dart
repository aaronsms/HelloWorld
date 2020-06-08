import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/model/failure.dart';
import 'package:helloworld/domain/model/value_objects.dart';
import 'package:helloworld/domain/model/value_validator.dart';

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}