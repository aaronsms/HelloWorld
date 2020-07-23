import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:helloworld/domain/identity_access/model/user/biography.dart';
import 'package:helloworld/domain/identity_access/model/user/email_address.dart';
import 'package:helloworld/domain/identity_access/model/user/language_proficiency.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learning_language.dart';
import 'package:helloworld/domain/identity_access/model/user/location.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_language.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:helloworld/domain/identity_access/model/user/password.dart';
import 'package:helloworld/domain/identity_access/model/user/profile_picture.dart';
import 'package:helloworld/domain/identity_access/model/user/speaking_language.dart';
import 'package:helloworld/domain/identity_access/service/registration_failure.dart';

abstract class IRegistrationService {
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
    @required List<Tuple2<LatLng, Location>> location,
  });
}
