import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/messenger/message.dart';
import 'package:helloworld/domain/messenger/receiver.dart';
import 'package:helloworld/domain/messenger/sender.dart';

part 'message_dto.freezed.dart';

part 'message_dto.g.dart';

@freezed
abstract class MessageDto implements _$MessageDto {
  const MessageDto._();

  // ignore: sort_unnamed_constructors_first
  const factory MessageDto({
    @required String id,
    @required String content,
    @required String senderId,
    @required String senderName,
    @required String receiverId,
    @required String receiverName,
    @required DateTime sendDate,
    DateTime notifyDate,
    @required bool isRead,
  }) = _MessageDto;

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  Message toDomain() {
    return Message(
      id: MessageId.fromUniqueId(id),
      content: Content(content),
      sender: MessageSender(
          SenderId.fromUniqueId(senderId), SenderName(senderName)),
      receiver: MessageReceiver(
          ReceiverId.fromUniqueId(receiverId), ReceiverName(receiverName)),
      time: SendDate(sendDate),
      read: HasRead(isRead),
    );
  }

  factory MessageDto.fromDomain(Message message) {
    return MessageDto(
      id: message.id.getOrCrash(),
      content: message.content.getOrCrash(),
      receiverId: message.receiver.id.getOrCrash(),
      receiverName: message.receiver.id.getOrCrash(),
      senderId: message.sender.id.getOrCrash(),
      senderName: message.sender.name.getOrCrash(),
      sendDate: message.time.getOrCrash(),
      isRead: message.read.getOrCrash(),
    );
  }
}
