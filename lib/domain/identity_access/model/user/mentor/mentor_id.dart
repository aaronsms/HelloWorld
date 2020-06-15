import 'package:helloworld/domain/common/identity.dart';

class MentorId extends Identity {
  MentorId() : super.fromUuid();
  MentorId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}
