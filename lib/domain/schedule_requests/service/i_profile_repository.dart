import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/schedule_requests/service/profile_failure.dart';

abstract class IProfileRepository {
  Future<Either<ProfileFailure, List<Learner>>> watchAllLearners();
  Future<Either<ProfileFailure, List<Mentor>>> watchAllMentors();
}