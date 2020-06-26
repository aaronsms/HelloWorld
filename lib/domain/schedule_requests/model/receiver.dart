import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';

class Receiver implements Entity {
  final UserId id;

  Receiver(this.id);

}