import 'package:helloworld/domain/common/identity.dart';

class QualificationId extends Identity {
  QualificationId() : super.fromUuid();
  QualificationId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}
