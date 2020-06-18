import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/common/value_objects.dart';

class SpeakingLanguage extends ValueObject<Language>{
  @override
  final Either<ValueFailure<Language>, Language> value;

  SpeakingLanguage(Language language) : value = right(language);

  @override
  String toString() => value.fold(
        (l) => '',
        (r) => languageToString(r),
  );
}