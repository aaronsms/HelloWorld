import 'package:flutter/foundation.dart';
import 'package:helloworld/domain/auth/email_address.dart';
import 'package:helloworld/domain/auth/password.dart';

class UserModel {
  final EmailAddress emailAddress;
  final Password password;

  const UserModel({
    @required this.emailAddress,
    @required this.password,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        emailAddress: EmailAddress(json['emailAddress']),
        password: Password(json['password']));
  }

  Map<String, dynamic> toJson() {
    return {
      'emailAddress': emailAddress,
      'password': password,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModel &&
          emailAddress == other.emailAddress &&
          password == other.password;

  @override
  int get hashCode => emailAddress.hashCode ^ password.hashCode;
}
