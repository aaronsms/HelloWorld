import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/common/failure.dart';
import 'package:helloworld/domain/common/identity.dart';
import 'package:helloworld/domain/common/value_objects.dart';

import 'receiver.dart';
import 'sender.dart';

part 'message.freezed.dart';

@freezed
abstract class Message with _$Message implements Entity {
  factory Message.create(
      {SenderId senderId,
      ReceiverId receiverId,
      Content content}) {
    return Message(
      id: MessageId(),
      sender: MessageSender(senderId),
      receiver: MessageReceiver(receiverId),
      content: content,
      read: HasRead(false),
      time: SendDate(DateTime.now()),
    );
  }

  // ignore: sort_unnamed_constructors_first
  const factory Message({
    MessageId id,
    MessageSender sender,
    MessageReceiver receiver,
    Content content,
    HasRead read,
    SendDate time,
  }) = _Message;
}

class MessageId extends Identity {
  MessageId() : super.fromUuid();

  MessageId.fromUniqueId(String uniqueId) : super.fromUniqueId(uniqueId);
}

class SendDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  SendDate(DateTime value) : value = right(value);
}

class ReadTime extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  ReadTime(DateTime value) : value = right(value);
}

class HasRead extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  // ignore: avoid_positional_boolean_parameters
  HasRead(bool value) : value = right(value);
}

class Content extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  Content(String value) : value = right(value);
}
