import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:web_socket_channel/io.dart';
import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/messenger/message.dart';
import 'package:helloworld/domain/messenger/service/i_message_repository.dart';
import 'package:helloworld/domain/messenger/service/message_failure.dart';
import 'package:helloworld/infrastructure/common/string_utils.dart';

import 'message_dto.dart';

class MessageRepository extends IMessageRepository {
  static const url = 'http://192.168.0.109:3000/api/messages';
  static const wsUrl = 'ws://192.168.0.109:3000/api/messages';

  // production only
  final String fakeCookie =
      'session=ypgMrWo5nqXXFd_ueQD99A.fplstxrJZxP1QdIlfWrmmzP1ydbigNc7-_qN6xu_1bPsYcoCgcycmcPICSwfvkKDBI2-rWJo96NvRaUTaVzcnQ.1595307612902.86400000.bDLdmdUlMnsLyTHV3FzeOSsjhLP1guN1qHnLiZF9T1Y';

  IOWebSocketChannel channel;

  @override
  Future<Either<MessageFailure, List<Message>>> getAllConversations() async {
    final HttpClient client = HttpClient();

    final request = await client.getUrl(Uri.parse(url));
    request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
    request.headers.set(HttpHeaders.acceptHeader, 'application/json');
    // production only
    request.headers.set(HttpHeaders.cookieHeader, fakeCookie);

    final response = await request.close();

    final messageJson =
        json.decode(await response.transform(utf8.decoder).join()) as List;
    final messageDto = messageJson.map((e) {
      return MessageDto.fromJson((e as Map)
          .cast<String, dynamic>()
          .map((key, _) => MapEntry(toCamelCase(key), _)));
    });
    final messageList = messageDto.map((e) => e.toDomain()).toList().reversed.toList();

    return right(messageList);
  }

  @override
  Future<Either<MessageFailure, List<Message>>> getAllMessagesWith(
      UserId otherUserId) async {
    final HttpClient client = HttpClient();

    final request =
        await client.getUrl(Uri.parse('$url/user/${otherUserId.getOrCrash()}'));
    request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
    request.headers.set(HttpHeaders.acceptHeader, 'application/json');
    // production only
    request.headers.set(HttpHeaders.cookieHeader, fakeCookie);
    final response = await request.close();

    final messageJson =
        json.decode(await response.transform(utf8.decoder).join()) as List;
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
    final HttpClient client = HttpClient();

    final request =
        await client.getUrl(Uri.parse('$url/message/${messageId.getOrCrash()}'));
    request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
    request.headers.set(HttpHeaders.acceptHeader, 'application/json');
    // production only
    request.headers.set(HttpHeaders.cookieHeader, fakeCookie);
    final response = await request.close();

    final messageJson =
        json.decode(await response.transform(utf8.decoder).join());
    final messageDto = MessageDto.fromJson((messageJson as Map)
        .cast<String, dynamic>()
        .map((key, _) => MapEntry(toCamelCase(key), _)));
    final message = messageDto.toDomain();

    return right(message);
  }
}
