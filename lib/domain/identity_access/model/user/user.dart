import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/entity.dart';

import 'email_address.dart';
import 'name.dart';
import 'password.dart';
import 'user_id.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User implements Entity {
  factory User({Name name, EmailAddress emailAddress, Password password}) {
    return User._(
        id: UserId(),
        name: name,
        emailAddress: emailAddress,
        password: password);
  }

  const factory User._({
    @required UserId id,
    @required Name name,
    @required EmailAddress emailAddress,
    @required Password password,
  }) = _User;
}
