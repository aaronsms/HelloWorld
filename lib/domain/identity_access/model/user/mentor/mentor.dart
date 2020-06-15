import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/entity.dart';

import 'teaching_background.dart';
import '../gender.dart';
import '../location.dart';
import '../user_id.dart';
import 'mentor_id.dart';

part 'mentor.freezed.dart';

@freezed
abstract class Mentor with _$Mentor implements Entity {
  const factory Mentor({
    @required MentorId id,
    @required UserId userId,
    @required TeachingBackground languageBackground,
    @required Location location,
    @required Gender gender
  }) = _Mentor;
}