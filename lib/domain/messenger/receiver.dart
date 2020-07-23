import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/identity.dart';
import 'package:helloworld/domain/common/value_objects.dart';
import 'package:helloworld/domain/common/value_validator.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';


class MessageReceiver extends Entity {
  @override
  final ReceiverId id;
  final ReceiverName name;

  MessageReceiver(this.id, [this.name]);
}

class ReceiverName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ReceiverName(String input) {
    assert(input != null);
    return ReceiverName._(validateStringNotEmpty(input));
  }
  const ReceiverName._(this.value);
}

class ReceiverId extends UserId {
  ReceiverId() : super();
  ReceiverId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}