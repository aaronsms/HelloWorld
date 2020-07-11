// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MentorDto _$_$_MentorDtoFromJson(Map<String, dynamic> json) {
  return _$_MentorDto(
    id: json['id'] as String,
    userId: json['userId'] as String,
    name: json['name'] as String,
    biography: json['biography'] as String,
    profilePicture: json['profilePicture'] as String,
    locations: (json['locations'] as List)?.map((e) => e as String)?.toList(),
    learningLanguages: (json['learningLanguages'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    speakingLanguages: (json['speakingLanguages'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    teachingLanguages: (json['teachingLanguages'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$_$_MentorDtoToJson(_$_MentorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'biography': instance.biography,
      'profilePicture': instance.profilePicture,
      'locations': instance.locations,
      'learningLanguages': instance.learningLanguages,
      'speakingLanguages': instance.speakingLanguages,
      'teachingLanguages': instance.teachingLanguages,
    };
