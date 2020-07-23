import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/identity.dart';
import 'package:helloworld/domain/common/value_objects.dart';
import 'package:helloworld/domain/common/value_validator.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';

class MessageSender extends Entity {
  @override
  final SenderId id;
  final SenderName name;

  MessageSender(this.id, [this.name]);
}

class SenderName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SenderName(String input) {
    assert(input != null);
    return SenderName._(validateStringNotEmpty(input));
  }

  const SenderName._(this.value);
}

class SenderId extends UserId {
  SenderId() : super();
  SenderId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}