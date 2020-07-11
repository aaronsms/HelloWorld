import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/entity.dart';

import '../biography.dart';
import '../language_proficiency.dart';
import '../location.dart';
import '../name.dart';
import '../profile_picture.dart';
import '../speaking_language.dart';
import '../user_id.dart';
import 'learner_id.dart';
import 'learning_background.dart';
import 'learning_language.dart';

part 'learner.freezed.dart';

@freezed
abstract class Learner with _$Learner implements Entity {
  factory Learner.create({
    UserId userId,
    Name name,
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

    return Learner(
      id: LearnerId(),
      userId: userId,
      name: name,
      profilePicture: profilePicture,
      biography: bio,
      location: location,
      languageBackground: background,
    );
  }

  // ignore: sort_unnamed_constructors_first
  const factory Learner({
    @required LearnerId id,
    @required UserId userId,
    @required Name name,
    @required ProfilePicture profilePicture,
    @required Biography biography,
    @required LearningBackground languageBackground,
    @required List<Location> location,
  }) = _Learner;
}
