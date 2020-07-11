import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/value_objects.dart';

class Biography extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Biography(String input) => Biography._(right(input));

  const Biography._(this.value);
}