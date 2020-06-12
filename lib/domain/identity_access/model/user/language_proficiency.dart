import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/value_objects.dart';

class LanguageProficiency extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LanguageProficiency.a1() => LanguageProficiency._(right("A1"));
  factory LanguageProficiency.a2() => LanguageProficiency._(right("A2"));
  factory LanguageProficiency.b1() => LanguageProficiency._(right("B1"));
  factory LanguageProficiency.b2() => LanguageProficiency._(right("B2"));
  factory LanguageProficiency.c1() => LanguageProficiency._(right("C1"));
  factory LanguageProficiency.c2() => LanguageProficiency._(right("C2"));

  const LanguageProficiency._(this.value);
}
