import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/schedule_requests/service/i_profile_repository.dart';
import 'package:helloworld/domain/schedule_requests/service/profile_failure.dart';
import 'package:helloworld/infrastructure/identity_access/model/mentor_dto.dart';

import 'package:http/http.dart' as http;

import 'model/learner_dto.dart';

class ProfileRepository implements IProfileRepository {
  @override
  Future<Either<ProfileFailure, List<Learner>>> watchAllLearners() async {
    final response = await http.get(
      'http://192.168.0.109:3000/api/learners',
      headers: {
        "Accept": "application/json",
      },
    );
    final learners = json.decode(response.body) as List;
    final learnersList = learners
        .map((e) =>
            LearnerDto.fromJson((e as Map).cast<String, dynamic>()).toDomain())
        .toList();
    return right(learnersList);
  }

  @override
  Future<Either<ProfileFailure, List<Mentor>>> watchAllMentors() async {
    final response = await http.get(
      'http://192.168.0.109:3000/api/mentors',
      headers: {
        "Accept": "application/json",
      },
    );

    final mentors = json.decode(response.body) as List;
    final mentorsList = mentors
        .map((e) =>
            MentorDto.fromJson((e as Map).cast<String, dynamic>()).toDomain())
        .toList();

    return right(mentorsList);
  }
}
