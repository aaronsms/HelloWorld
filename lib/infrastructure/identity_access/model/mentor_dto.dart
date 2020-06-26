import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';

part 'mentor_dto.freezed.dart';
part 'mentor_dto.g.dart';

@freezed
abstract class MentorDto with _$MentorDto {
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
            MapEntry(key.getOrCrash().toString(), value.getOrCrash()));
    final speakingLanguages = languageBackground.speakingLanguages.map(
        (key, value) =>
            MapEntry(key.getOrCrash().toString(), value.getOrCrash()));
    final teachingLanguages = languageBackground.teachingLanguages.map(
        (key, value) =>
            MapEntry(key.getOrCrash().toString(), value.getOrCrash()));

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

  factory MentorDto.fromJson(Map<String, dynamic> json) =>
      _$MentorDtoFromJson(json);
}
