part of 'message_bloc.dart';

@freezed
abstract class MessageEvent with _$MessageEvent {
  const factory MessageEvent.fetchConversations() = FetchConversations;
  const factory MessageEvent.getMessagesWith(UserId userId) = GetMessagesWith;
  const factory MessageEvent.sendMessage(Message message) = SendMessage;
  const factory MessageEvent.receiveMessage(String json) = ReceiveMessage;
  const factory MessageEvent.fetchMessage(MessageId messageId) = FetchMessage;
}
