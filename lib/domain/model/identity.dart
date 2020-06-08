import 'failure.dart';
import 'value_objects.dart';
import 'package:dartz/dartz.dart';

class Identity extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Identity.fromUUID(String input) {
    assert(input != null);
    return Identity._(Right(input));
  }

  const Identity._(this.value);
}