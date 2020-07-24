import 'dart:convert';

import 'package:helloworld/infrastructure/messenger/message_repository.dart';
import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';


void main() {
  test('Should get all conversations', () async {
    final MessageRepository messageRepository = MessageRepository();

    messageRepository.client = MockClient((request) async {
      final mapJson = [{'id': 123}, {'id': 123}];
      return Response(jsonEncode(mapJson), 200);
    });

    final result = await messageRepository.getAllConversations();
    final messages = result.getOrElse(() => null);
    expect(messages, messages);
  });
}