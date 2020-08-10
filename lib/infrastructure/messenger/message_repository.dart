import 'dart:async';
import 'dart:convert';

import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:web_socket_channel/io.dart';
import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/messenger/message.dart';
import 'package:helloworld/domain/messenger/service/i_message_repository.dart';
import 'package:helloworld/domain/messenger/service/message_failure.dart';
import 'package:helloworld/infrastructure/common/string_utils.dart';
import 'package:http/http.dart' as http;

import 'message_dto.dart';

class MessageRepository extends IMessageRepository {
  http.Client client = http.Client();
  static String url = 'http://$host/api/messages';
  static String wsUrl = 'ws://$host/api/messages';

  IOWebSocketChannel channel;

  @override
  Future<Either<MessageFailure, List<Message>>> getAllConversations() async {
    final authCookie = await cookie;
    final response = await client.get(
      url,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Cookie": authCookie,
      },
    );

    final messageJson = json.decode(response.body) as List;
    final messageDto = messageJson.map((e) {
      return MessageDto.fromJson((e as Map)
          .cast<String, dynamic>()
          .map((key, _) => MapEntry(toCamelCase(key), _)));
    });
    final messageList =
        messageDto.map((e) => e.toDomain()).toList().reversed.toList();

    return right(messageList);
  }

  @override
  Future<Either<MessageFailure, List<Message>>> getAllMessagesWith(
      UserId otherUserId) async {
    final authCookie = await cookie;
    final response = await client.get(
      '$url/user/${otherUserId.getOrCrash()}',
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Cookie": authCookie,
      },
    );

    final messageJson = json.decode(response.body) as List;
    final messageDto = messageJson.map((e) {
      return MessageDto.fromJson((e as Map)
          .cast<String, dynamic>()
          .map((key, _) => MapEntry(toCamelCase(key), _)));
    });
    final messageList = messageDto.map((e) => e.toDomain()).toList();

    return right(messageList);
  }

  @override
  Future<Either<MessageFailure, Message>> getMessage(
      MessageId messageId) async {
    final authCookie = await cookie;
    final response = await client.get(
      '$url/message/${messageId.getOrCrash()}',
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Cookie": authCookie,
      },
    );

    final messageJson = json.decode(response.body);
    final messageDto = MessageDto.fromJson((messageJson as Map)
        .cast<String, dynamic>()
        .map((key, _) => MapEntry(toCamelCase(key), _)));
    final message = messageDto.toDomain();

    return right(message);
  }
}
