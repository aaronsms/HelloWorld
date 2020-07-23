import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/identity_access/model/user/biography.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_background.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_background_id.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/location.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor_id.dart';
import 'package:helloworld/domain/identity_access/model/user/profile_picture.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';

part 'mentor_dto.freezed.dart';

part 'mentor_dto.g.dart';

@freezed
abstract class MentorDto implements _$MentorDto {
  const MentorDto._();

  // ignore: sort_unnamed_constructors_first
  const factory MentorDto({
    @required String id,
    @required String userId,
    String name,
    String biography,
    @required String profilePicture,
    @required List<Map<String, dynamic>> locations,
    @required Map<String, String> learningLanguages,
    @required Map<String, String> speakingLanguages,
    @required Map<String, String> teachingLanguages,
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
      name: mentor.name.getOrCrash(),
      profilePicture:
          base64Encode(mentor.profilePicture.getOrElse(null)?.readAsBytesSync() ?? []),
      biography: mentor.biography.getOrCrash(),
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
      teachingLanguages: teachingLanguages,
      locations: mentor.location
          .map((e) => {
                'latlng': e.value1.toJson(),
                'location': e.value2.getOrCrash()
              })
          .toList(),
    );
  }

  Future<Mentor> toDomain() async {
    final learning = learningLanguages.map((key, value) => MapEntry(
        LearningLanguage(parseLanguage(key)), LanguageProficiency(value)));
    final speaking = speakingLanguages.map((key, value) => MapEntry(
        SpeakingLanguage(parseLanguage(key)), LanguageProficiency(value)));
    final teaching = teachingLanguages.map((key, value) => MapEntry(
        TeachingLanguage(parseLanguage(key)), LanguageProficiency(value)));

    final appDirectory = await localPath;
    final file = File('$appDirectory/$id.jpg');
    if (profilePicture != null) {
      file.writeAsBytesSync(base64Decode(profilePicture));
    }

    return Mentor(
      id: MentorId.fromUniqueId(this.id),
      userId: UserId.fromUniqueId(userId),
      name: Name(name ?? ''),
      biography: Biography(biography ?? ''),
      location: locations
          .map((e) => Tuple2(
              LatLng.fromJson(e['latlng']), Location(e['location'] as String)))
          .toList(),
      profilePicture: profilePicture != null
          ? ProfilePicture(file)
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
