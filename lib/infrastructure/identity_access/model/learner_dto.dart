import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';

part 'learner_dto.freezed.dart';

part 'learner_dto.g.dart';

@freezed
abstract class LearnerDto with _$LearnerDto {
  const factory LearnerDto({
    String id,
    String userId,
    String profilePicture,
    String biography,
    List<String> locations,
    Map<String, String> learningLanguages,
    Map<String, String> speakingLanguages,
  }) = _LearnerDto;

  factory LearnerDto.fromDomain(Learner learner) {
    final languageBackground = learner.languageBackground;
    final learningLanguages = languageBackground.learningLanguages.map(
        (key, value) =>
            MapEntry(key.getOrCrash().toString(), value.getOrCrash()));
    final speakingLanguages = languageBackground.speakingLanguages.map(
        (key, value) =>
            MapEntry(key.getOrCrash().toString(), value.getOrCrash()));

    return LearnerDto(
      id: learner.id.getOrCrash(),
      userId: learner.userId.getOrCrash(),
      profilePicture:
          base64Encode(learner.profilePicture.getOrCrash().readAsBytesSync()),
      biography: learner.biography.getOrCrash(),
      learningLanguages: learningLanguages,
      speakingLanguages: speakingLanguages,
      locations: learner.location.map((e) => e.getOrCrash()).toList(),
    );
  }

  factory LearnerDto.fromJson(Map<String, dynamic> json) =>
      _$LearnerDtoFromJson(json);
}
