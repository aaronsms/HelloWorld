// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessageEventTearOff {
  const _$MessageEventTearOff();

  FetchConversations fetchConversations() {
    return const FetchConversations();
  }

  GetMessagesWith getMessagesWith(UserId userId) {
    return GetMessagesWith(
      userId,
    );
  }

  SendMessage sendMessage(Message message) {
    return SendMessage(
      message,
    );
  }

  ReceiveMessage receiveMessage(String json) {
    return ReceiveMessage(
      json,
    );
  }

  FetchMessage fetchMessage(MessageId messageId) {
    return FetchMessage(
      messageId,
    );
  }
}

// ignore: unused_element
const $MessageEvent = _$MessageEventTearOff();

mixin _$MessageEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchConversations(),
    @required Result getMessagesWith(UserId userId),
    @required Result sendMessage(Message message),
    @required Result receiveMessage(String json),
    @required Result fetchMessage(MessageId messageId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchConversations(),
    Result getMessagesWith(UserId userId),
    Result sendMessage(Message message),
    Result receiveMessage(String json),
    Result fetchMessage(MessageId messageId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchConversations(FetchConversations value),
    @required Result getMessagesWith(GetMessagesWith value),
    @required Result sendMessage(SendMessage value),
    @required Result receiveMessage(ReceiveMessage value),
    @required Result fetchMessage(FetchMessage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchConversations(FetchConversations value),
    Result getMessagesWith(GetMessagesWith value),
    Result sendMessage(SendMessage value),
    Result receiveMessage(ReceiveMessage value),
    Result fetchMessage(FetchMessage value),
    @required Result orElse(),
  });
}

abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
}

class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;
}

abstract class $FetchConversationsCopyWith<$Res> {
  factory $FetchConversationsCopyWith(
          FetchConversations value, $Res Function(FetchConversations) then) =
      _$FetchConversationsCopyWithImpl<$Res>;
}

class _$FetchConversationsCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $FetchConversationsCopyWith<$Res> {
  _$FetchConversationsCopyWithImpl(
      FetchConversations _value, $Res Function(FetchConversations) _then)
      : super(_value, (v) => _then(v as FetchConversations));

  @override
  FetchConversations get _value => super._value as FetchConversations;
}

class _$FetchConversations implements FetchConversations {
  const _$FetchConversations();

  @override
  String toString() {
    return 'MessageEvent.fetchConversations()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchConversations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchConversations(),
    @required Result getMessagesWith(UserId userId),
    @required Result sendMessage(Message message),
    @required Result receiveMessage(String json),
    @required Result fetchMessage(MessageId messageId),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return fetchConversations();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchConversations(),
    Result getMessagesWith(UserId userId),
    Result sendMessage(Message message),
    Result receiveMessage(String json),
    Result fetchMessage(MessageId messageId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchConversations != null) {
      return fetchConversations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchConversations(FetchConversations value),
    @required Result getMessagesWith(GetMessagesWith value),
    @required Result sendMessage(SendMessage value),
    @required Result receiveMessage(ReceiveMessage value),
    @required Result fetchMessage(FetchMessage value),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return fetchConversations(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchConversations(FetchConversations value),
    Result getMessagesWith(GetMessagesWith value),
    Result sendMessage(SendMessage value),
    Result receiveMessage(ReceiveMessage value),
    Result fetchMessage(FetchMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchConversations != null) {
      return fetchConversations(this);
    }
    return orElse();
  }
}

abstract class FetchConversations implements MessageEvent {
  const factory FetchConversations() = _$FetchConversations;
}

abstract class $GetMessagesWithCopyWith<$Res> {
  factory $GetMessagesWithCopyWith(
          GetMessagesWith value, $Res Function(GetMessagesWith) then) =
      _$GetMessagesWithCopyWithImpl<$Res>;
  $Res call({UserId userId});
}

class _$GetMessagesWithCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $GetMessagesWithCopyWith<$Res> {
  _$GetMessagesWithCopyWithImpl(
      GetMessagesWith _value, $Res Function(GetMessagesWith) _then)
      : super(_value, (v) => _then(v as GetMessagesWith));

  @override
  GetMessagesWith get _value => super._value as GetMessagesWith;

  @override
  $Res call({
    Object userId = freezed,
  }) {
    return _then(GetMessagesWith(
      userId == freezed ? _value.userId : userId as UserId,
    ));
  }
}

class _$GetMessagesWith implements GetMessagesWith {
  const _$GetMessagesWith(this.userId) : assert(userId != null);

  @override
  final UserId userId;

  @override
  String toString() {
    return 'MessageEvent.getMessagesWith(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMessagesWith &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @override
  $GetMessagesWithCopyWith<GetMessagesWith> get copyWith =>
      _$GetMessagesWithCopyWithImpl<GetMessagesWith>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchConversations(),
    @required Result getMessagesWith(UserId userId),
    @required Result sendMessage(Message message),
    @required Result receiveMessage(String json),
    @required Result fetchMessage(MessageId messageId),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return getMessagesWith(userId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchConversations(),
    Result getMessagesWith(UserId userId),
    Result sendMessage(Message message),
    Result receiveMessage(String json),
    Result fetchMessage(MessageId messageId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMessagesWith != null) {
      return getMessagesWith(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchConversations(FetchConversations value),
    @required Result getMessagesWith(GetMessagesWith value),
    @required Result sendMessage(SendMessage value),
    @required Result receiveMessage(ReceiveMessage value),
    @required Result fetchMessage(FetchMessage value),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return getMessagesWith(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchConversations(FetchConversations value),
    Result getMessagesWith(GetMessagesWith value),
    Result sendMessage(SendMessage value),
    Result receiveMessage(ReceiveMessage value),
    Result fetchMessage(FetchMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMessagesWith != null) {
      return getMessagesWith(this);
    }
    return orElse();
  }
}

abstract class GetMessagesWith implements MessageEvent {
  const factory GetMessagesWith(UserId userId) = _$GetMessagesWith;

  UserId get userId;
  $GetMessagesWithCopyWith<GetMessagesWith> get copyWith;
}

abstract class $SendMessageCopyWith<$Res> {
  factory $SendMessageCopyWith(
          SendMessage value, $Res Function(SendMessage) then) =
      _$SendMessageCopyWithImpl<$Res>;
  $Res call({Message message});

  $MessageCopyWith<$Res> get message;
}

class _$SendMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(
      SendMessage _value, $Res Function(SendMessage) _then)
      : super(_value, (v) => _then(v as SendMessage));

  @override
  SendMessage get _value => super._value as SendMessage;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(SendMessage(
      message == freezed ? _value.message : message as Message,
    ));
  }

  @override
  $MessageCopyWith<$Res> get message {
    if (_value.message == null) {
      return null;
    }
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

class _$SendMessage implements SendMessage {
  const _$SendMessage(this.message) : assert(message != null);

  @override
  final Message message;

  @override
  String toString() {
    return 'MessageEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $SendMessageCopyWith<SendMessage> get copyWith =>
      _$SendMessageCopyWithImpl<SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchConversations(),
    @required Result getMessagesWith(UserId userId),
    @required Result sendMessage(Message message),
    @required Result receiveMessage(String json),
    @required Result fetchMessage(MessageId messageId),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchConversations(),
    Result getMessagesWith(UserId userId),
    Result sendMessage(Message message),
    Result receiveMessage(String json),
    Result fetchMessage(MessageId messageId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchConversations(FetchConversations value),
    @required Result getMessagesWith(GetMessagesWith value),
    @required Result sendMessage(SendMessage value),
    @required Result receiveMessage(ReceiveMessage value),
    @required Result fetchMessage(FetchMessage value),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchConversations(FetchConversations value),
    Result getMessagesWith(GetMessagesWith value),
    Result sendMessage(SendMessage value),
    Result receiveMessage(ReceiveMessage value),
    Result fetchMessage(FetchMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessage implements MessageEvent {
  const factory SendMessage(Message message) = _$SendMessage;

  Message get message;
  $SendMessageCopyWith<SendMessage> get copyWith;
}

abstract class $ReceiveMessageCopyWith<$Res> {
  factory $ReceiveMessageCopyWith(
          ReceiveMessage value, $Res Function(ReceiveMessage) then) =
      _$ReceiveMessageCopyWithImpl<$Res>;
  $Res call({String json});
}

class _$ReceiveMessageCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $ReceiveMessageCopyWith<$Res> {
  _$ReceiveMessageCopyWithImpl(
      ReceiveMessage _value, $Res Function(ReceiveMessage) _then)
      : super(_value, (v) => _then(v as ReceiveMessage));

  @override
  ReceiveMessage get _value => super._value as ReceiveMessage;

  @override
  $Res call({
    Object json = freezed,
  }) {
    return _then(ReceiveMessage(
      json == freezed ? _value.json : json as String,
    ));
  }
}

class _$ReceiveMessage implements ReceiveMessage {
  const _$ReceiveMessage(this.json) : assert(json != null);

  @override
  final String json;

  @override
  String toString() {
    return 'MessageEvent.receiveMessage(json: $json)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReceiveMessage &&
            (identical(other.json, json) ||
                const DeepCollectionEquality().equals(other.json, json)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(json);

  @override
  $ReceiveMessageCopyWith<ReceiveMessage> get copyWith =>
      _$ReceiveMessageCopyWithImpl<ReceiveMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchConversations(),
    @required Result getMessagesWith(UserId userId),
    @required Result sendMessage(Message message),
    @required Result receiveMessage(String json),
    @required Result fetchMessage(MessageId messageId),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return receiveMessage(json);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchConversations(),
    Result getMessagesWith(UserId userId),
    Result sendMessage(Message message),
    Result receiveMessage(String json),
    Result fetchMessage(MessageId messageId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiveMessage != null) {
      return receiveMessage(json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchConversations(FetchConversations value),
    @required Result getMessagesWith(GetMessagesWith value),
    @required Result sendMessage(SendMessage value),
    @required Result receiveMessage(ReceiveMessage value),
    @required Result fetchMessage(FetchMessage value),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return receiveMessage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchConversations(FetchConversations value),
    Result getMessagesWith(GetMessagesWith value),
    Result sendMessage(SendMessage value),
    Result receiveMessage(ReceiveMessage value),
    Result fetchMessage(FetchMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (receiveMessage != null) {
      return receiveMessage(this);
    }
    return orElse();
  }
}

abstract class ReceiveMessage implements MessageEvent {
  const factory ReceiveMessage(String json) = _$ReceiveMessage;

  String get json;
  $ReceiveMessageCopyWith<ReceiveMessage> get copyWith;
}

abstract class $FetchMessageCopyWith<$Res> {
  factory $FetchMessageCopyWith(
          FetchMessage value, $Res Function(FetchMessage) then) =
      _$FetchMessageCopyWithImpl<$Res>;
  $Res call({MessageId messageId});
}

class _$FetchMessageCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $FetchMessageCopyWith<$Res> {
  _$FetchMessageCopyWithImpl(
      FetchMessage _value, $Res Function(FetchMessage) _then)
      : super(_value, (v) => _then(v as FetchMessage));

  @override
  FetchMessage get _value => super._value as FetchMessage;

  @override
  $Res call({
    Object messageId = freezed,
  }) {
    return _then(FetchMessage(
      messageId == freezed ? _value.messageId : messageId as MessageId,
    ));
  }
}

class _$FetchMessage implements FetchMessage {
  const _$FetchMessage(this.messageId) : assert(messageId != null);

  @override
  final MessageId messageId;

  @override
  String toString() {
    return 'MessageEvent.fetchMessage(messageId: $messageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchMessage &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messageId);

  @override
  $FetchMessageCopyWith<FetchMessage> get copyWith =>
      _$FetchMessageCopyWithImpl<FetchMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchConversations(),
    @required Result getMessagesWith(UserId userId),
    @required Result sendMessage(Message message),
    @required Result receiveMessage(String json),
    @required Result fetchMessage(MessageId messageId),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return fetchMessage(messageId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchConversations(),
    Result getMessagesWith(UserId userId),
    Result sendMessage(Message message),
    Result receiveMessage(String json),
    Result fetchMessage(MessageId messageId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMessage != null) {
      return fetchMessage(messageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchConversations(FetchConversations value),
    @required Result getMessagesWith(GetMessagesWith value),
    @required Result sendMessage(SendMessage value),
    @required Result receiveMessage(ReceiveMessage value),
    @required Result fetchMessage(FetchMessage value),
  }) {
    assert(fetchConversations != null);
    assert(getMessagesWith != null);
    assert(sendMessage != null);
    assert(receiveMessage != null);
    assert(fetchMessage != null);
    return fetchMessage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchConversations(FetchConversations value),
    Result getMessagesWith(GetMessagesWith value),
    Result sendMessage(SendMessage value),
    Result receiveMessage(ReceiveMessage value),
    Result fetchMessage(FetchMessage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchMessage != null) {
      return fetchMessage(this);
    }
    return orElse();
  }
}

abstract class FetchMessage implements MessageEvent {
  const factory FetchMessage(MessageId messageId) = _$FetchMessage;

  MessageId get messageId;
  $FetchMessageCopyWith<FetchMessage> get copyWith;
}

class _$MessageStateTearOff {
  const _$MessageStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadingConversations loading(
      {@required List<Message> conversations,
      @required List<Message> messages,
      @required bool changing}) {
    return _LoadingConversations(
      conversations: conversations,
      messages: messages,
      changing: changing,
    );
  }

  _Loaded loaded(
      {@required List<Message> conversations,
      @required List<Message> messages,
      @required bool changing}) {
    return _Loaded(
      conversations: conversations,
      messages: messages,
      changing: changing,
    );
  }

  _NetworkError networkError() {
    return const _NetworkError();
  }
}

// ignore: unused_element
const $MessageState = _$MessageStateTearOff();

mixin _$MessageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result loading(
            List<Message> conversations, List<Message> messages, bool changing),
    @required
        Result loaded(
            List<Message> conversations, List<Message> messages, bool changing),
    @required Result networkError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(
        List<Message> conversations, List<Message> messages, bool changing),
    Result loaded(
        List<Message> conversations, List<Message> messages, bool changing),
    Result networkError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_LoadingConversations value),
    @required Result loaded(_Loaded value),
    @required Result networkError(_NetworkError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_LoadingConversations value),
    Result loaded(_Loaded value),
    Result networkError(_NetworkError value),
    @required Result orElse(),
  });
}

abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
}

class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MessageState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result loading(
            List<Message> conversations, List<Message> messages, bool changing),
    @required
        Result loaded(
            List<Message> conversations, List<Message> messages, bool changing),
    @required Result networkError(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(networkError != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(
        List<Message> conversations, List<Message> messages, bool changing),
    Result loaded(
        List<Message> conversations, List<Message> messages, bool changing),
    Result networkError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_LoadingConversations value),
    @required Result loaded(_Loaded value),
    @required Result networkError(_NetworkError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(networkError != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_LoadingConversations value),
    Result loaded(_Loaded value),
    Result networkError(_NetworkError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MessageState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingConversationsCopyWith<$Res> {
  factory _$LoadingConversationsCopyWith(_LoadingConversations value,
          $Res Function(_LoadingConversations) then) =
      __$LoadingConversationsCopyWithImpl<$Res>;
  $Res call(
      {List<Message> conversations, List<Message> messages, bool changing});
}

class __$LoadingConversationsCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res>
    implements _$LoadingConversationsCopyWith<$Res> {
  __$LoadingConversationsCopyWithImpl(
      _LoadingConversations _value, $Res Function(_LoadingConversations) _then)
      : super(_value, (v) => _then(v as _LoadingConversations));

  @override
  _LoadingConversations get _value => super._value as _LoadingConversations;

  @override
  $Res call({
    Object conversations = freezed,
    Object messages = freezed,
    Object changing = freezed,
  }) {
    return _then(_LoadingConversations(
      conversations: conversations == freezed
          ? _value.conversations
          : conversations as List<Message>,
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
      changing: changing == freezed ? _value.changing : changing as bool,
    ));
  }
}

class _$_LoadingConversations implements _LoadingConversations {
  const _$_LoadingConversations(
      {@required this.conversations,
      @required this.messages,
      @required this.changing})
      : assert(conversations != null),
        assert(messages != null),
        assert(changing != null);

  @override
  final List<Message> conversations;
  @override
  final List<Message> messages;
  @override
  final bool changing;

  @override
  String toString() {
    return 'MessageState.loading(conversations: $conversations, messages: $messages, changing: $changing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadingConversations &&
            (identical(other.conversations, conversations) ||
                const DeepCollectionEquality()
                    .equals(other.conversations, conversations)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.changing, changing) ||
                const DeepCollectionEquality()
                    .equals(other.changing, changing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(conversations) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(changing);

  @override
  _$LoadingConversationsCopyWith<_LoadingConversations> get copyWith =>
      __$LoadingConversationsCopyWithImpl<_LoadingConversations>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result loading(
            List<Message> conversations, List<Message> messages, bool changing),
    @required
        Result loaded(
            List<Message> conversations, List<Message> messages, bool changing),
    @required Result networkError(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(networkError != null);
    return loading(conversations, messages, changing);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(
        List<Message> conversations, List<Message> messages, bool changing),
    Result loaded(
        List<Message> conversations, List<Message> messages, bool changing),
    Result networkError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(conversations, messages, changing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_LoadingConversations value),
    @required Result loaded(_Loaded value),
    @required Result networkError(_NetworkError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(networkError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_LoadingConversations value),
    Result loaded(_Loaded value),
    Result networkError(_NetworkError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingConversations implements MessageState {
  const factory _LoadingConversations(
      {@required List<Message> conversations,
      @required List<Message> messages,
      @required bool changing}) = _$_LoadingConversations;

  List<Message> get conversations;
  List<Message> get messages;
  bool get changing;
  _$LoadingConversationsCopyWith<_LoadingConversations> get copyWith;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Message> conversations, List<Message> messages, bool changing});
}

class __$LoadedCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object conversations = freezed,
    Object messages = freezed,
    Object changing = freezed,
  }) {
    return _then(_Loaded(
      conversations: conversations == freezed
          ? _value.conversations
          : conversations as List<Message>,
      messages:
          messages == freezed ? _value.messages : messages as List<Message>,
      changing: changing == freezed ? _value.changing : changing as bool,
    ));
  }
}

class _$_Loaded implements _Loaded {
  const _$_Loaded(
      {@required this.conversations,
      @required this.messages,
      @required this.changing})
      : assert(conversations != null),
        assert(messages != null),
        assert(changing != null);

  @override
  final List<Message> conversations;
  @override
  final List<Message> messages;
  @override
  final bool changing;

  @override
  String toString() {
    return 'MessageState.loaded(conversations: $conversations, messages: $messages, changing: $changing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.conversations, conversations) ||
                const DeepCollectionEquality()
                    .equals(other.conversations, conversations)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.changing, changing) ||
                const DeepCollectionEquality()
                    .equals(other.changing, changing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(conversations) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(changing);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result loading(
            List<Message> conversations, List<Message> messages, bool changing),
    @required
        Result loaded(
            List<Message> conversations, List<Message> messages, bool changing),
    @required Result networkError(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(networkError != null);
    return loaded(conversations, messages, changing);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(
        List<Message> conversations, List<Message> messages, bool changing),
    Result loaded(
        List<Message> conversations, List<Message> messages, bool changing),
    Result networkError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(conversations, messages, changing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_LoadingConversations value),
    @required Result loaded(_Loaded value),
    @required Result networkError(_NetworkError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(networkError != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_LoadingConversations value),
    Result loaded(_Loaded value),
    Result networkError(_NetworkError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements MessageState {
  const factory _Loaded(
      {@required List<Message> conversations,
      @required List<Message> messages,
      @required bool changing}) = _$_Loaded;

  List<Message> get conversations;
  List<Message> get messages;
  bool get changing;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

abstract class _$NetworkErrorCopyWith<$Res> {
  factory _$NetworkErrorCopyWith(
          _NetworkError value, $Res Function(_NetworkError) then) =
      __$NetworkErrorCopyWithImpl<$Res>;
}

class __$NetworkErrorCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$NetworkErrorCopyWith<$Res> {
  __$NetworkErrorCopyWithImpl(
      _NetworkError _value, $Res Function(_NetworkError) _then)
      : super(_value, (v) => _then(v as _NetworkError));

  @override
  _NetworkError get _value => super._value as _NetworkError;
}

class _$_NetworkError implements _NetworkError {
  const _$_NetworkError();

  @override
  String toString() {
    return 'MessageState.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result loading(
            List<Message> conversations, List<Message> messages, bool changing),
    @required
        Result loaded(
            List<Message> conversations, List<Message> messages, bool changing),
    @required Result networkError(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(networkError != null);
    return networkError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(
        List<Message> conversations, List<Message> messages, bool changing),
    Result loaded(
        List<Message> conversations, List<Message> messages, bool changing),
    Result networkError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_LoadingConversations value),
    @required Result loaded(_Loaded value),
    @required Result networkError(_NetworkError value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(networkError != null);
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_LoadingConversations value),
    Result loaded(_Loaded value),
    Result networkError(_NetworkError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements MessageState {
  const factory _NetworkError() = _$_NetworkError;
}
