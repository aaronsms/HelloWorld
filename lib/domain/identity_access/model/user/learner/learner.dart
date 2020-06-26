import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/entity.dart';

import '../biography.dart';
import '../language_proficiency.dart';
import '../location.dart';
import '../profile_picture.dart';
import '../speaking_language.dart';
import '../user_id.dart';
import 'learner_id.dart';
import 'learning_background.dart';
import 'learning_language.dart';

part 'learner.freezed.dart';

@freezed
abstract class Learner with _$Learner implements Entity {
  factory Learner({
    UserId userId,
    ProfilePicture profilePicture,
    Biography bio,
    List<Location> location,
    Map<LearningLanguage, LanguageProficiency> learningLanguages,
    Map<SpeakingLanguage, LanguageProficiency> speakingLanguages,
  }) {
    final background = LearningBackground(
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
    );

    return Learner._(
      id: LearnerId(),
      userId: userId,
      profilePicture: profilePicture,
      biography: bio,
      location: location,
      languageBackground: background,
    );
  }

  const factory Learner._({
    @required LearnerId id,
    @required UserId userId,
    @required ProfilePicture profilePicture,
    @required Biography biography,
    @required LearningBackground languageBackground,
    @required List<Location> location,
  }) = _Learner;
}
