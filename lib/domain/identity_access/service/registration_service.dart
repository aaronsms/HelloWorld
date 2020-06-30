import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/domain/common/languages.dart';
import 'package:helloworld/domain/common/value_objects.dart';
import 'package:helloworld/domain/identity_access/model/user/biography.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/location.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'package:helloworld/domain/identity_access/model/user/profile_picture.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:helloworld/domain/identity_access/model/user/user.dart';
import 'package:helloworld/domain/identity_access/service/i_registration_service.dart';
import 'package:helloworld/domain/identity_access/service/registration_failure.dart';
import 'package:injectable/injectable.dart';

import 'i_user_repository.dart';

@LazySingleton(as: IRegistrationService)
class RegistrationService implements IRegistrationService {
  final IUserRepository _userRepository;

  RegistrationService(this._userRepository);

  @override
  Future<Either<RegistrationFailure, Unit>> registerUser({
    @required Name name,
    @required EmailAddress emailAddress,
    @required Password password,
    @required bool isMentorOrLearner,
    @required
        List<Tuple2<SpeakingLanguage, LanguageProficiency>> speakingLanguages,
    @required
        List<Tuple2<LearningLanguage, LanguageProficiency>> learningLanguages,
    @required
        List<Tuple2<TeachingLanguage, LanguageProficiency>> teachingLanguages,
    @required ProfilePicture profilePicture,
    @required Biography biography,
    @required List<Location> location,
  }) {
    final User newUser =
        User(name: name, emailAddress: emailAddress, password: password);
    if (isMentorOrLearner) {
      final Mentor newMentor = Mentor.create(
        userId: newUser.id,
        speakingLanguages: _listTupleToMap(speakingLanguages)
            .cast<SpeakingLanguage, LanguageProficiency>(),
        teachingLanguages: _listTupleToMap(teachingLanguages)
            .cast<TeachingLanguage, LanguageProficiency>(),
        learningLanguages: _listTupleToMap(learningLanguages)
            .cast<LearningLanguage, LanguageProficiency>(),
        location: location,
        profilePicture: profilePicture,
        bio: biography,
      );

      return _userRepository.addMentor(user: newUser, mentor: newMentor);
    } else {
      final Learner newLearner = Learner.create(
        userId: newUser.id,
        speakingLanguages: _listTupleToMap(speakingLanguages)
            .cast<SpeakingLanguage, LanguageProficiency>(),
        learningLanguages: _listTupleToMap(learningLanguages)
            .cast<LearningLanguage, LanguageProficiency>(),
        location: location,
        profilePicture: profilePicture,
        bio: biography,
      );

      return _userRepository.addLearner(user: newUser, learner: newLearner);
    }
  }

  Map<ValueObject<Language>, LanguageProficiency> _listTupleToMap(
      List<Tuple2<ValueObject<Language>, LanguageProficiency>> listTuple) {
    final map = <ValueObject<Language>, LanguageProficiency>{};
    for (final tuple in listTuple) {
      map.putIfAbsent(tuple.value1, () => tuple.value2);
    }
    return map;
  }
}
