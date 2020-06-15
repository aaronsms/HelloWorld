import 'package:helloworld/domain/common/identity.dart';

class TeachingBackgroundId extends Identity {
  TeachingBackgroundId() : super.fromUuid();
  TeachingBackgroundId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}
