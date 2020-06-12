import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/common/value_objects.dart';

class LearningLanguage extends ValueObject<Language>{
  @override
  final Either<ValueFailure<Language>, Language> value;

  const LearningLanguage(this.value);
}