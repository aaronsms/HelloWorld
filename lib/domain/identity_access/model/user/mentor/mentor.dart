import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';

import '../biography.dart';
import '../language_proficiency.dart';
import '../location.dart';
import '../profile_picture.dart';
import '../speaking_language.dart';
import '../user_id.dart';
import 'mentor_id.dart';
import 'teaching_background.dart';

part 'mentor.freezed.dart';

@freezed
abstract class Mentor with _$Mentor implements Entity {
  factory Mentor({
    UserId userId,
    ProfilePicture profilePicture,
    Biography bio,
    List<Location> location,
    Map<LearningLanguage, LanguageProficiency> learningLanguages,
    Map<SpeakingLanguage, LanguageProficiency> speakingLanguages,
    Map<TeachingLanguage, LanguageProficiency> teachingLanguages,
  }) {
    final background = TeachingBackground(
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
      teachingLanguages: teachingLanguages,
    );

    return Mentor._(
      id: MentorId(),
      userId: userId,
      profilePicture: profilePicture,
      biography: bio,
      location: location,
      languageBackground: background,
    );
  }

  const factory Mentor._({
    @required MentorId id,
    @required UserId userId,
    @required ProfilePicture profilePicture,
    @required Biography biography,
    @required TeachingBackground languageBackground,
    @required List<Location> location,
  }) = _Mentor;
}
