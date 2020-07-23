import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/domain/messenger/message.dart';
import 'package:helloworld/domain/messenger/service/i_message_repository.dart';
import 'package:helloworld/infrastructure/messenger/message_repository.dart';
import 'package:meta/meta.dart';
import 'package:web_socket_channel/io.dart';

part 'message_event.dart';

part 'message_state.dart';

part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  static const wsUrl = 'ws://192.168.0.109:3000/api/messages';
  final IMessageRepository _messageRepository;
  final IOWebSocketChannel channel;

  MessageBloc._()
      : _messageRepository = MessageRepository(),
        channel = IOWebSocketChannel.connect(wsUrl, headers: {
          'cookie':
              'session=ypgMrWo5nqXXFd_ueQD99A.fplstxrJZxP1QdIlfWrmmzP1ydbigNc7-_qN6xu_1bPsYcoCgcycmcPICSwfvkKDBI2-rWJo96NvRaUTaVzcnQ.1595307612902.86400000.bDLdmdUlMnsLyTHV3FzeOSsjhLP1guN1qHnLiZF9T1Y'
        });

  // ignore: sort_unnamed_constructors_first
  factory MessageBloc() {
    final bloc = MessageBloc._();

    bloc.channel.stream.listen((event) {
      bloc.add(MessageEvent.receiveMessage(event as String));
    });

    return bloc;
  }

  @override
  MessageState get initialState => const MessageState.initial();

  @override
  Stream<MessageState> mapEventToState(
    MessageEvent event,
  ) async* {
    yield* event.map(
      fetchConversations: (event) async* {
        yield state.maybeMap(
            loaded: (state) => MessageState.loading(
                messages: state.messages, conversations: state.conversations, changing: true),
            loading: (state) => MessageState.loading(
                messages: state.messages, conversations: state.conversations, changing: true),
            orElse: () =>
                const MessageState.loading(messages: [], conversations: [], changing: true));

        final messageFailureOrSuccess =
            await _messageRepository.getAllConversations();

        yield* messageFailureOrSuccess.fold((l) async* {
          yield const MessageState.networkError();
        }, (r) async* {
          yield state.maybeMap(
              loading: (state) =>
                  MessageState.loaded(conversations: r, messages: state.messages, changing: false),
              orElse: () =>
                  MessageState.loaded(conversations: r, messages: [], changing: false));
        });
      },
      getMessagesWith: (event) async* {
        yield state.maybeMap(
            loaded: (state) => MessageState.loading(
                messages: [], conversations: state.conversations, changing: true),
            loading: (state) => MessageState.loading(
                messages: [], conversations: state.conversations, changing: true),
            orElse: () =>
                const MessageState.loading(messages: [], conversations: [], changing: true));

        final messageFailureOrSuccess =
            await _messageRepository.getAllMessagesWith(event.userId);

        yield* messageFailureOrSuccess.fold((l) async* {
          yield const MessageState.networkError();
        }, (r) async* {
          yield state.maybeMap(
              loading: (state) => MessageState.loaded(
                  messages: r, conversations: state.conversations, changing: false),
              orElse: () =>
                  MessageState.loaded(messages: r, conversations: [], changing: false));
        });
      },
      sendMessage: (SendMessage send) async* {
        final message = send.message;
        final messageJson = jsonEncode({
          'type': 'send',
          'id': message.id.getOrCrash(),
          'senderId': message.sender.id.getOrCrash(),
          'receiverId': message.receiver.id.getOrCrash(),
          'content': message.content.getOrCrash(),
          'sendDate': message.time.getOrCrash().toString(),
        });

        channel.sink.add(messageJson);
      },
      receiveMessage: (event) async* {
        final data = jsonDecode(event.json) as Map;
        data.cast<String, dynamic>();
        if (data.containsKey('messageId')) {
          add(MessageEvent.fetchMessage(
              MessageId.fromUniqueId(data['messageId'] as String)));
        }
      },
      fetchMessage: (event) async* {
        final message = await _messageRepository.getMessage(event.messageId);

        yield state.maybeMap(
            loaded: (state) {
              final list = [message.getOrElse(() => null), ...state.messages];
              return MessageState.loaded(messages: list, conversations: state.conversations, changing: false);
            },
            loading: (state) {
              final list = [message.getOrElse(() => null), ...state.messages];
              return MessageState.loaded(messages: list, conversations: state.conversations, changing: false);
            },
            orElse: () {
              return const MessageState.loaded(conversations: [], messages: [], changing: false);
            });

        add(const MessageEvent.fetchConversations());
      },
    );
  }
}
