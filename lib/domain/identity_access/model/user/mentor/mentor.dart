import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/teaching_background.dart';

import '../gender.dart';
import '../location.dart';
import '../user_id.dart';
import 'mentor_id.dart';

class Mentor extends Entity {
  final MentorId id;
  final UserId userId;
  final TeachingBackground languageBackground;
  final Location location;
  final Gender gender;

  Mentor(this.id, this.userId, this.languageBackground, this.location, this.gender);
}