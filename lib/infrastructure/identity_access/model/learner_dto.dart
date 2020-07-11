import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart' as dartz;
import 'package:freezed_annotation/freezed_annotation.dart';
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
import 'package:path_provider/path_provider.dart';

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
    @required List<String> locations,
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
          base64Encode(learner.profilePicture.getOrCrash().readAsBytesSync()),
      biography: learner.biography.getOrCrash(),
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
      locations: learner.location.map((e) => e.getOrCrash()).toList(),
    );
  }

  Future<Learner> toDomain() async {
    final learning = learningLanguages.map((key, value) => MapEntry(
        LearningLanguage(parseLanguage(key)), LanguageProficiency(value)));
    final speaking = speakingLanguages.map((key, value) => MapEntry(
        SpeakingLanguage(parseLanguage(key)), LanguageProficiency(value)));

    final appDirectory = await localPath;
    final file = File('$appDirectory/$id.jpg');
    if (profilePicture != null) {
      file.writeAsBytesSync(base64Decode(profilePicture));
    }

    return Learner(
      id: LearnerId.fromUniqueId(id),
      userId: UserId.fromUniqueId(userId),
      name: Name(name ?? ''),
      biography: Biography(biography ?? ''),
      location: locations.map((e) => Location(dartz.right(e))).toList(),
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
