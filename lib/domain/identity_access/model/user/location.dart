import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/value_objects.dart';

class Location extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  Location(String value): value = right(value);
}