import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';

class Sender implements Entity {
  @override
  final UserId id;

  Sender(this.id);

}