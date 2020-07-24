import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/identity_access/model/user/biography.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner_id.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_background.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_background_id.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/domain/identity_access/model/user/location.dart';
import 'package:helloworld/domain/identity_access/model/user/profile_picture.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';

part 'learner_dto.freezed.dart';

part 'learner_dto.g.dart';

@freezed
abstract class LearnerDto implements _$LearnerDto {
  const LearnerDto._();

  // ignore: sort_unnamed_constructors_first
  const factory LearnerDto({
    @required String id,
    @required String name,
    @required String userId,
    String profilePicture,
    String biography,
    @required List<Map<String, dynamic>> locations,
    @required Map<String, String> learningLanguages,
    @required Map<String, String> speakingLanguages,
  }) = _LearnerDto;

  factory LearnerDto.fromDomain(Learner learner) {
    final languageBackground = learner.languageBackground;
    final learningLanguages = languageBackground.learningLanguages.map(
        (key, value) =>
            MapEntry(languageToString(key.getOrCrash()), value.getOrCrash()));
    final speakingLanguages = languageBackground.speakingLanguages.map(
        (key, value) =>
            MapEntry(languageToString(key.getOrCrash()), value.getOrCrash()));

    return LearnerDto(
      id: learner.id.getOrCrash(),
      name: learner.name.getOrCrash(),
      userId: learner.userId.getOrCrash(),
      profilePicture:
          base64Encode(learner.profilePicture.getOrElse(null)?.readAsBytesSync() ?? []),
      biography: learner.biography.getOrCrash(),
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
      locations: learner.location
          .map((e) => {
        'latlng': e.value1.toJson(),
        'location': e.value2.getOrCrash()
      })
          .toList(),
    );
  }

  Future<Learner> toDomain() async {
    final learning = learningLanguages.map((key, value) => MapEntry(
        LearningLanguage(parseLanguage(key)), LanguageProficiency(value)));
    final speaking = speakingLanguages.map((key, value) => MapEntry(
        SpeakingLanguage(parseLanguage(key)), LanguageProficiency(value)));

    final appDirectory = await localPath;
    final file = File('$appDirectory/$userId.jpg');
    if (profilePicture != null) {
      file.writeAsBytesSync(base64Decode(profilePicture));
    }

    return Learner(
      id: LearnerId.fromUniqueId(this.id),
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
      languageBackground: LearningBackground(
        id: LearningBackgroundId.fromUniqueId("test"),
        learningLanguages: learning,
        speakingLanguages: speaking,
      ),
    );
  }

  factory LearnerDto.fromJson(Map<String, dynamic> json) =>
      _$LearnerDtoFromJson(json);
}
