import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_profile_event.freezed.dart';

@freezed
abstract class RegisterProfileEvent with _$RegisterProfileEvent {
  const factory RegisterProfileEvent.imageSet({File file}) = ImageSet;

  const factory RegisterProfileEvent.bioChanged({String bio}) = BioChanged;

  const factory RegisterProfileEvent.learningLanguageAdded(
      {String language, String proficiency}) = LearningLanguageAdded;

  const factory RegisterProfileEvent.speakingLanguageAdded(
      {String language, String proficiency}) = SpeakingLanguageAdded;

  const factory RegisterProfileEvent.teachingLanguageAdded(
      {String language, String proficiency}) = TeachingLanguageAdded;

  const factory RegisterProfileEvent.learningLanguageDeleted(
      {String language}) = LearningLanguageDeleted;

  const factory RegisterProfileEvent.speakingLanguageDeleted(
      {String language}) = SpeakingLanguageDeleted;

  const factory RegisterProfileEvent.teachingLanguageDeleted(
      {String language}) = TeachingLanguageDeleted;

  const factory RegisterProfileEvent.doneClicked() = DoneClicked;
}
