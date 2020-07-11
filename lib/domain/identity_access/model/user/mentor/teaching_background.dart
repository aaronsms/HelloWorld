import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import '../language_proficiency.dart';
import '../speaking_language.dart';
import 'teaching_background_id.dart';
import 'teaching_language.dart';

class TeachingBackground implements Entity {
  @override
  final TeachingBackgroundId id;
  final Map<SpeakingLanguage, LanguageProficiency> speakingLanguages;
  final Map<LearningLanguage, LanguageProficiency> learningLanguages;
  final Map<TeachingLanguage, LanguageProficiency> teachingLanguages;

  const TeachingBackground({
    this.id,
    this.teachingLanguages,
    this.speakingLanguages,
    this.learningLanguages,
  });
}
