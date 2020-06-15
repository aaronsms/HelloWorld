import 'package:helloworld/domain/common/entity.dart';

import 'email_address.dart';
import 'name.dart';
import 'password.dart';
import 'user_id.dart';

class User implements Entity {
  @override
  final UserId id;
  final Name name;
  final EmailAddress emailAddress;
  final Password password;

  const User({this.id, this.name, this.emailAddress, this.password});
}
