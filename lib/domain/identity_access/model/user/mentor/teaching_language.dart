import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/common/value_objects.dart';

class TeachingLanguage extends ValueObject<Language>{
  @override
  final Either<ValueFailure<Language>, Language> value;

  const TeachingLanguage(this.value);
}