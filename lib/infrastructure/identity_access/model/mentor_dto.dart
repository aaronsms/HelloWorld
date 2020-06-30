import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/identity_access/model/user/biography.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_background.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_background_id.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/location.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor_id.dart';
import 'package:helloworld/domain/identity_access/model/user/profile_picture.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';

part 'mentor_dto.freezed.dart';

part 'mentor_dto.g.dart';

@freezed
abstract class MentorDto implements _$MentorDto {
  const MentorDto._();

  // ignore: sort_unnamed_constructors_first
  const factory MentorDto({
    String id,
    String userId,
    String biography,
    String profilePicture,
    List<String> locations,
    Map<String, String> learningLanguages,
    Map<String, String> speakingLanguages,
    Map<String, String> teachingLanguages,
  }) = _MentorDto;

  factory MentorDto.fromDomain(Mentor mentor) {
    final languageBackground = mentor.languageBackground;
    final learningLanguages = languageBackground.learningLanguages.map(
        (key, value) =>
            MapEntry(languageToString(key.getOrCrash()), value.getOrCrash()));
    final speakingLanguages = languageBackground.speakingLanguages.map(
        (key, value) =>
            MapEntry(languageToString(key.getOrCrash()), value.getOrCrash()));
    final teachingLanguages = languageBackground.teachingLanguages.map(
        (key, value) =>
            MapEntry(languageToString(key.getOrCrash()), value.getOrCrash()));

    return MentorDto(
      id: mentor.id.getOrCrash(),
      userId: mentor.userId.getOrCrash(),
      profilePicture:
          base64Encode(mentor.profilePicture.getOrCrash().readAsBytesSync()),
      biography: mentor.biography.getOrCrash(),
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
      teachingLanguages: teachingLanguages,
      locations: mentor.location.map((e) => e.getOrCrash()).toList(),
    );
  }

  Mentor toDomain() {
    final learning = learningLanguages.map((key, value) => MapEntry(
        LearningLanguage(parseLanguage(key)), LanguageProficiency(value)));
    final speaking = speakingLanguages.map((key, value) => MapEntry(
        SpeakingLanguage(parseLanguage(key)), LanguageProficiency(value)));
    final teaching = teachingLanguages.map((key, value) => MapEntry(
        TeachingLanguage(parseLanguage(key)), LanguageProficiency(value)));

    return Mentor(
      id: MentorId.fromUniqueId(id),
      userId: UserId.fromUniqueId(userId),
      biography: Biography(biography),
      location: locations.map((e) => Location(dartz.right(e))).toList(),
      profilePicture: profilePicture != null
          ? ProfilePicture(File.fromRawPath(base64Decode(profilePicture)))
          : ProfilePicture.empty(),
      languageBackground: TeachingBackground(
        id: TeachingBackgroundId.fromUniqueId("test"),
        learningLanguages: learning,
        speakingLanguages: speaking,
        teachingLanguages: teaching,
      ),
    );
  }

  factory MentorDto.fromJson(Map<String, dynamic> json) =>
      _$MentorDtoFromJson(json);
}
