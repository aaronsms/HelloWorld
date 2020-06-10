import 'package:helloworld/domain/common/entity.dart';
import 'teaching_background_id.dart';
import '../language_proficiency.dart';
import '../speaking_language.dart';
import 'teaching_language.dart';

class TeachingBackground extends Entity {
  final TeachingBackgroundId id;
  final Map<SpeakingLanguage, LanguageProficiency> speakingLanguages;
  final Map<TeachingLanguage, LanguageProficiency> teachingLanguages;

  const TeachingBackground(this.id, this.teachingLanguages, this.speakingLanguages);
}