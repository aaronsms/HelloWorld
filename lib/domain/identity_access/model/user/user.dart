import 'package:helloworld/domain/common/entity.dart';

import 'user_id.dart';
import 'credential.dart';
import 'role.dart';

class User extends Entity {
  final UserId id;
  final Role role;
  final Credential credential;

  const User({this.id, this.role, this.credential});
}
