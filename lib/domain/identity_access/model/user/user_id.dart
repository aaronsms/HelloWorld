import 'package:helloworld/domain/common/identity.dart';

class UserId extends Identity {
  UserId() : super.fromUuid();
  UserId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}
