import 'package:flutter/foundation.dart';
import 'email_address.dart';
import 'password.dart';

@immutable
class Credential {
  final EmailAddress emailAddress;
  final Password password;

  const Credential({this.emailAddress, this.password});
}