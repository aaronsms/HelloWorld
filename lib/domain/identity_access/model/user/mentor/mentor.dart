import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';

import '../biography.dart';
import '../language_proficiency.dart';
import '../location.dart';
import '../name.dart';
import '../profile_picture.dart';
import '../speaking_language.dart';
import '../user_id.dart';
import 'mentor_id.dart';
import 'teaching_background.dart';

part 'mentor.freezed.dart';

@freezed
abstract class Mentor with _$Mentor implements Entity {
  factory Mentor.create({
    UserId userId,
    Name name,
    ProfilePicture profilePicture,
    Biography bio,
    List<Tuple2<LatLng, Location>> location,
    Map<LearningLanguage, LanguageProficiency> learningLanguages,
    Map<SpeakingLanguage, LanguageProficiency> speakingLanguages,
    Map<TeachingLanguage, LanguageProficiency> teachingLanguages,
  }) {
    final background = TeachingBackground(
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
      teachingLanguages: teachingLanguages,
    );

    return Mentor(
      id: MentorId(),
      name: name,
      userId: userId,
      profilePicture: profilePicture,
      biography: bio,
      location: location,
      languageBackground: background,
    );
  }

  // ignore: sort_unnamed_constructors_first
  const factory Mentor({
    @required MentorId id,
    @required UserId userId,
    @required Name name,
    @required ProfilePicture profilePicture,
    @required Biography biography,
    @required TeachingBackground languageBackground,
    @required List<Tuple2<LatLng, Location>> location,
  }) = _Mentor;
}
