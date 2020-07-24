import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/value_objects.dart';
import 'package:helloworld/domain/common/value_validator.dart';

class LanguageProficiency extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  static const A1 = "A1: Beginner";
  static const A2 = "A2: Elementary";
  static const B1 = "B1: Intermediate";
  static const B2 = "B2: Upper Intermediate";
  static const C1 = "C1: Advanced";
  static const C2 = "C2: Proficiency";

  static List<String> get proficiencies {
    return [A1, A2, B1, B2, C1, C2];
  }

  double toDouble() {
    final str = value.getOrElse(() => '');
    if (str == A1) return 0;
    if (str == A2) return 1;
    if (str == B1) return 2;
    if (str == B2) return 3;
    if (str == C1) return 4;
    if (str == C2) return 5;
  }

  factory LanguageProficiency(String str) =>
      LanguageProficiency._(validateProficiency(str));
  factory LanguageProficiency.a1() => LanguageProficiency._(right(A1));
  factory LanguageProficiency.a2() => LanguageProficiency._(right(A2));
  factory LanguageProficiency.b1() => LanguageProficiency._(right(B1));
  factory LanguageProficiency.b2() => LanguageProficiency._(right(B2));
  factory LanguageProficiency.c1() => LanguageProficiency._(right(C1));
  factory LanguageProficiency.c2() => LanguageProficiency._(right(C2));

  const LanguageProficiency._(this.value);

  @override
  String toString() => value.fold((l) => '', (label) => label);
}
