import 'package:helloworld/domain/model/identity.dart';
import 'credential.dart';
import 'role.dart';

class User {
  final Identity userId;
  final Role role;
  final Credential credential;

  const User({this.userId, this.role, this.credential});
}
