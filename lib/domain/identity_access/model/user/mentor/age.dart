import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/value_objects.dart';
import 'package:helloworld/domain/common/value_validator.dart';

class Age extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory Age(int input) {
    assert (input != null);
    return Age._(validateAge(input));
  }

  const Age._(this.value);
}