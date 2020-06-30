// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'learner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LearnerDto _$_$_LearnerDtoFromJson(Map<String, dynamic> json) {
  return _$_LearnerDto(
    id: json['id'] as String,
    userId: json['user_id'] as String,
    profilePicture: json['profile_picture'] as String,
    biography: json['biography'] as String,
    locations: (json['locations'] as List)?.map((e) => e as String)?.toList(),
    learningLanguages: (json['learning_languages'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    speakingLanguages: (json['speaking_languages'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$_$_LearnerDtoToJson(_$_LearnerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'profilePicture': instance.profilePicture,
      'biography': instance.biography,
      'locations': instance.locations,
      'learningLanguages': instance.learningLanguages,
      'speakingLanguages': instance.speakingLanguages,
    };
