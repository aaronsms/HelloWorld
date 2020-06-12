import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/service/registration_failure.dart';

abstract class IUserRepository {
  Future<Either<RegistrationFailure, Unit>> addLearner();
  Future<Either<RegistrationFailure, Unit>> addMentor();
  Future<Either<RegistrationFailure, Unit>> removeUser();
}