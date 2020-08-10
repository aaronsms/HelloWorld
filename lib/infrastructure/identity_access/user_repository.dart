import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/user.dart';
import 'package:helloworld/domain/identity_access/service/registration_failure.dart';
import 'package:helloworld/domain/identity_access/service/i_user_repository.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'model/learner_dto.dart';
import 'model/mentor_dto.dart';
import 'model/user_dto.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final http.Client client = http.Client();
  static String url = 'http://$host/api/users';

  @override
  Future<Either<RegistrationFailure, Unit>> addLearner(
      {User user, Learner learner}) async {
    try {
      final userDto = UserDto.fromDomain(user);
      final learnerDto = LearnerDto.fromDomain(learner);

      final response = await client.post(
        url,
        body: jsonEncode({
          "user": userDto.toJson(),
          "learner": learnerDto.toJson(),
        }),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
      );

      final createdUser = json.decode(response.body) as Map;
      if (createdUser['id'] == userDto.id) {
        return right(unit);
      } else {
        return left(const RegistrationFailure.serverError());
      }
    } catch (e) {
      print(e);
      return left(const RegistrationFailure.serverError());
    }
  }

  @override
  Future<Either<RegistrationFailure, Unit>> addMentor(
      {User user, Mentor mentor}) async {
    try {
      final userDto = UserDto.fromDomain(user);
      final mentorDto = MentorDto.fromDomain(mentor);

      final response = await client.post(
        url,
        body: jsonEncode({
          "user": userDto.toJson(),
          "mentor": mentorDto.toJson(),
        }),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
      );

      final createdUser = json.decode(response.body) as Map;
      if (createdUser['id'] == userDto.id) {
        return right(unit);
      } else {
        return left(const RegistrationFailure.serverError());
      }
    } catch (e) {
      return left(const RegistrationFailure.serverError());
    }
  }

  @override
  Future<Either<RegistrationFailure, Unit>> updateLearner({Learner learner}) async {
    try {
      final learnerDto = LearnerDto.fromDomain(learner);

      final response = await client.put(
        url,
        body: jsonEncode({
          "learner": learnerDto.toJson(),
        }),
        headers: {
          "Cookie": await cookie,
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
      );

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(const RegistrationFailure.serverError());
      }
    } catch (e) {
      return left(const RegistrationFailure.serverError());
    }
  }

  @override
  Future<Either<RegistrationFailure, Unit>> updateMentor({Mentor mentor}) async {
    try {
      final mentorDto = MentorDto.fromDomain(mentor);

      final response = await client.put(
        url,
        body: jsonEncode({
          "mentor": mentorDto.toJson(),
        }),
        headers: {
          "Cookie": await cookie,
          "Accept": "application/json",
          "Content-Type": "application/json",
        },
      );

      if (response.statusCode == 201) {
        return right(unit);
      } else {
        return left(const RegistrationFailure.serverError());
      }
    } catch (e) {
      return left(const RegistrationFailure.serverError());
    }
  }
}
