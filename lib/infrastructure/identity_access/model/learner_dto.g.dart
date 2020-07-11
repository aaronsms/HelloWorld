// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearnerDto _$_$_LearnerDtoFromJson(Map<String, dynamic> json) {
  return _$_LearnerDto(
    id: json['id'] as String,
    name: json['name'] as String,
    userId: json['userId'] as String,
    profilePicture: json['profilePicture'] as String,
    biography: json['biography'] as String,
    locations: (json['locations'] as List)?.map((e) => e as String)?.toList(),
    learningLanguages: (json['learningLanguages'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    speakingLanguages: (json['speakingLanguages'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$_$_LearnerDtoToJson(_$_LearnerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userId': instance.userId,
      'profilePicture': instance.profilePicture,
      'biography': instance.biography,
      'locations': instance.locations,
      'learningLanguages': instance.learningLanguages,
      'speakingLanguages': instance.speakingLanguages,
    };
