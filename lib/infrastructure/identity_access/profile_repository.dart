import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/domain/schedule_requests/service/i_profile_repository.dart';
import 'package:helloworld/domain/schedule_requests/service/profile_failure.dart';
import 'package:helloworld/infrastructure/identity_access/model/mentor_dto.dart';
import 'package:helloworld/infrastructure/common/string_utils.dart';

import 'package:http/http.dart' as http;

import 'model/learner_dto.dart';

class ProfileRepository implements IProfileRepository {
  final http.Client client = http.Client();

  @override
  Future<Either<ProfileFailure, List<Learner>>> watchAllLearners() async {
    final response = await client.get(
      'http://192.168.0.109:3000/api/learners',
      headers: {
        "Accept": "application/json",
      },
    );
    final learnersJson = json.decode(response.body) as List;
    final learnersDto = learnersJson.map((e) {
      return LearnerDto.fromJson((e as Map)
          .cast<String, dynamic>()
          .map((key, _) => MapEntry(toCamelCase(key), _)));
    });
    final learnersList =
    await Future.wait(learnersDto.map((e) => e.toDomain()));
    return right(learnersList);
  }

  @override
  Future<Either<ProfileFailure, List<Mentor>>> watchAllMentors() async {
    final response = await client.get(
      'http://192.168.0.109:3000/api/mentors/7ff6fe00-ccbd-11ea-bc0e-419c611f356e',
      headers: {
        "Accept": "application/json",
      },
    );

    final mentorsJson = json.decode(response.body) as List;
    final mentorsDto = mentorsJson.map((e) =>
        MentorDto.fromJson((e as Map)
            .cast<String, dynamic>()
            .map((key, _) => MapEntry(toCamelCase(key), _))));
    final mentorsList = await Future.wait(mentorsDto.map((e) => e.toDomain()));
    return right(mentorsList);
  }

  @override
  Future<Either<ProfileFailure, Learner>> getLearner(UserId userId) async {
    final response = await client.get(
      'http://192.168.0.109:3000/api/users/${userId.getOrElse('')}',
      headers: {
        "Accept": "application/json",
      },
    );

    final learnerJson = json.decode(response.body) as Map;
    final learnerDto = LearnerDto.fromJson(
        learnerJson.cast<String, dynamic>().map((key, _) =>
            MapEntry(toCamelCase(key), _)));

    final learner = await learnerDto.toDomain();

    return right(learner);
  }

  @override
  Future<Either<ProfileFailure, Mentor>> getMentor(UserId userId) async {
    final response = await client.get(
      'http://192.168.0.109:3000/api/users/${userId.getOrElse('')}',
      headers: {
        "Accept": "application/json",
      },
    );

    final mentorJson = json.decode(response.body) as Map;
    final mentorDto = MentorDto.fromJson(
        mentorJson.cast<String, dynamic>().map((key, _) =>
            MapEntry(toCamelCase(key), _)));

    final mentor = await mentorDto.toDomain();

    return right(mentor);
  }
}
