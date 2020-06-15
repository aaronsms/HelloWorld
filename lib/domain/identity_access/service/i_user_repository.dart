import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/user.dart';
import 'package:helloworld/domain/identity_access/service/registration_failure.dart';

abstract class IUserRepository {
  Future<Either<RegistrationFailure, Unit>> addLearner({Learner learner});
  Future<Either<RegistrationFailure, Unit>> addMentor({Mentor mentor});
  Future<Either<RegistrationFailure, Unit>> removeUser({User user});
}