import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/profile_picture.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:injectable/injectable.dart';
import './bloc.dart';

@injectable
class RegisterProfileBloc
    extends Bloc<RegisterProfileEvent, RegisterProfileState> {
  @override
  RegisterProfileState get initialState => RegisterProfileState.initial();

  @override
  Stream<RegisterProfileState> mapEventToState(
      RegisterProfileEvent event) async* {
    yield* event.maybeMap(
      imageSet: (event) async* {
        yield state.copyWith(profilePicture: ProfilePicture(event.file));
      },
      bioChanged: (event) async* {
        yield state.copyWith(biography: event.bio);
      },
      speakingLanguageAdded: (event) async* {
        final SpeakingLanguage language =
            SpeakingLanguage(parseLanguage(event.language));
        final LanguageProficiency proficiency =
            LanguageProficiency(event.proficiency);
        final currList = state.speakingLanguages;

        if (!currList.fold(
            false, (value, element) => value || element.value1 == language)) {
          currList.add(Tuple2(language, proficiency));
          yield state.copyWith(isChangingItem: true);
        }
        yield state.copyWith(isChangingItem: false);
      },
      learningLanguageAdded: (event) async* {
        final LearningLanguage language =
            LearningLanguage(parseLanguage(event.language));
        final LanguageProficiency proficiency =
            LanguageProficiency(event.proficiency);
        final currList = state.learningLanguages;

        if (!currList.fold(
            false, (value, element) => value || element.value1 == language)) {
          currList.add(Tuple2(language, proficiency));
          yield state.copyWith(isChangingItem: true);
        }
        yield state.copyWith(isChangingItem: false);
      },
      teachingLanguageAdded: (event) async* {
        final TeachingLanguage language =
            TeachingLanguage(parseLanguage(event.language));
        final LanguageProficiency proficiency =
            LanguageProficiency(event.proficiency);
        final currList = state.teachingLanguages;

        if (!currList.fold(
            false, (value, element) => value || element.value1 == language)) {
          currList.add(Tuple2(language, proficiency));
          yield state.copyWith(isChangingItem: true);
        }
        yield state.copyWith(isChangingItem: false);
      },
      speakingLanguageDeleted: (event) async* {
        final SpeakingLanguage language =
            SpeakingLanguage(parseLanguage(event.language));
        final currList = state.speakingLanguages;

        yield state.copyWith(isChangingItem: true);
        currList.removeWhere((tuple) => tuple.value1 == language);
        yield state.copyWith(isChangingItem: false);
      },
      learningLanguageDeleted: (event) async* {
        final LearningLanguage language =
            LearningLanguage(parseLanguage(event.language));
        final currList = state.learningLanguages;

        yield state.copyWith(isChangingItem: true);
        currList.removeWhere((tuple) => tuple.value1 == language);
        yield state.copyWith(isChangingItem: false);
      },
      teachingLanguageDeleted: (event) async* {
        final TeachingLanguage language =
            TeachingLanguage(parseLanguage(event.language));
        final currList = state.teachingLanguages;
        yield state.copyWith(isChangingItem: true);
        currList.removeWhere((tuple) => tuple.value1 == language);
        yield state.copyWith(isChangingItem: false);
      },
      orElse: () async* {
        yield state;
      },
    );
  }
}
