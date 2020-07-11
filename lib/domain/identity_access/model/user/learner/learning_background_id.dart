import 'package:helloworld/domain/common/identity.dart';

class LearningBackgroundId extends Identity {
  LearningBackgroundId() : super.fromUuid();
  LearningBackgroundId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}
