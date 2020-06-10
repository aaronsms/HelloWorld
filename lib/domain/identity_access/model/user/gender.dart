import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/value_objects.dart';

class Gender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Gender.male() => Gender._(right("male"));
  factory Gender.female() => Gender._(right("female"));
  factory Gender.others() => Gender._(right("others"));

  const Gender._(this.value);
}