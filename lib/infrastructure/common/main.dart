import 'dart:convert';
import 'dart:io';

import 'package:web_socket_channel/io.dart';

import 'package:cookie_jar/cookie_jar.dart';

const wsUrl = 'ws://192.168.0.109:3000/api/messages';
const loginUrl = 'http://192.168.0.109:3000/api/sessions';
const getMessageUrl = 'http://192.168.0.109:3000/api/sessions';

Future<void> main() async {
  final HttpClient client = HttpClient();

  var request = await client.postUrl(Uri.parse(loginUrl));
  request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
  request.headers.set(HttpHeaders.acceptHeader, 'application/json');
  request.write(jsonEncode({
    "email": 'anothersaw78@gmail.com',
    "password": '12345678',
  }));

  var response = await request.close();
  final cookieStore = CookieJar();
  cookieStore.saveFromResponse(Uri.parse(loginUrl), response.cookies);

  final cookieSession = cookieStore.loadForRequest(Uri.parse(loginUrl));

  final token = cookieSession[0].value;
//  request = await client.getUrl(Uri.parse(loginUrl));
//  request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
//  request.headers.set(HttpHeaders.acceptHeader, 'application/json');
//  request.cookies.addAll(cookieSession);
//
//  response = await request.close();
//
//  response.transform(utf8.decoder).listen((data) {
//    print(jsonDecode(data));
//  });

  final channel =
      IOWebSocketChannel.connect(wsUrl, headers: {'cookie': 'session=$token'});
  channel.sink.add("connected!");
  channel.sink.add(json.encode({
    'type': 'send',
    "id": "2e8c8d36-c69a-4921-a980-9f33bc414c32",
    "senderId": "d1749d79-f2d8-4c64-88e1-8ef80d37d6c5",
    "receiverId": "d1749d79-f2d8-4c64-88e1-8ef80d37d6c1",
    "content": "Please don't.",
    "sendDate": DateTime.now().toString()
  }));
  channel.stream.listen((event) {
    print(event);
  });

//   Add AuthBloc at the top with CookieJar available throughout
//
//   send message to another user && receive message whenever
//   get list of message on http
}
