import 'package:helloworld/domain/common/identity.dart';

class LearnerId extends Identity {
  LearnerId() : super.fromUuid();
  LearnerId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}
