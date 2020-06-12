import 'package:helloworld/domain/common/entity.dart';

import '../user_id.dart';
import '../gender.dart';
import 'learning_background.dart';
import 'learner_id.dart';
import '../location.dart';

class Learner extends Entity {
  final LearnerId id;
  final UserId userId;
  final LearningBackground languageBackground;
  final Location location;
  final Gender gender;

  const Learner(this.id, this.userId, this.languageBackground, this.location, this.gender);
}