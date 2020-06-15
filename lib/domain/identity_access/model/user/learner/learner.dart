import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/entity.dart';

import '../gender.dart';
import '../location.dart';
import '../user_id.dart';
import 'learner_id.dart';
import 'learning_background.dart';

part 'learner.freezed.dart';

@freezed
abstract class Learner with _$Learner implements Entity {
  const factory Learner._(
      {@required LearnerId id,
      @required UserId userId,
      @required LearningBackground languageBackground,
      @required Location location,
      @required Gender gender}) = _Learner;
}
