import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/user.dart';
import 'package:helloworld/domain/identity_access/service/registration_failure.dart';

abstract class IUserRepository {
  Future<Either<RegistrationFailure, Unit>> addLearner({
    @required User user,
    @required Learner learner,
  });

  Future<Either<RegistrationFailure, Unit>> updateLearner({
    @required Learner learner,
  });

  Future<Either<RegistrationFailure, Unit>> addMentor({
    @required User user,
    @required Mentor mentor,
  });

  Future<Either<RegistrationFailure, Unit>> updateMentor({
    @required Mentor mentor,
  });
}
