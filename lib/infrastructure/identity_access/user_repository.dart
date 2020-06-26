import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/user.dart';
import 'package:helloworld/domain/identity_access/service/registration_failure.dart';
import 'package:helloworld/domain/identity_access/service/i_user_repository.dart';
import 'package:injectable/injectable.dart';

import 'model/learner_dto.dart';
import 'model/mentor_dto.dart';
import 'model/user_dto.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  @override
  Future<Either<RegistrationFailure, Unit>> addLearner(
      {User user, Learner learner}) async {
//    UserDto x;
    LearnerDto y;
//    print(x = UserDto.fromDomain(user));
    print(y = LearnerDto.fromDomain(learner));

//    print(x.toJson());
    print(y.toJson()['biography']);

    return right(unit);
  }

  @override
  Future<Either<RegistrationFailure, Unit>> addMentor(
      {User user, Mentor mentor}) async {
    UserDto x;
    MentorDto y;
    print(x = UserDto.fromDomain(user));
    print(y = MentorDto.fromDomain(mentor));

    print(x.toJson());
    print(y.toJson());

    print(UserDto.fromDomain(user));
    print(MentorDto.fromDomain(mentor));

    return right(unit);
  }
}
