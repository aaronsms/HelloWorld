part of 'message_bloc.dart';

@freezed
abstract class MessageState with _$MessageState {
  const factory MessageState.initial() = _Initial;

  const factory MessageState.loading({
    @required List<Message> conversations,
    @required List<Message> messages,
    @required bool changing,
  }) = _LoadingConversations;

  const factory MessageState.loaded({
    @required List<Message> conversations,
    @required List<Message> messages,
    @required bool changing,
  }) = _Loaded;

  const factory MessageState.networkError() = _NetworkError;
}
