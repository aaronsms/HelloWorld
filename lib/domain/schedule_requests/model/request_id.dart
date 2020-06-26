import 'package:helloworld/domain/common/identity.dart';

class RequestId extends Identity {
  RequestId() : super.fromUuid();
  RequestId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}
