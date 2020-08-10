import 'dart:convert';
import 'dart:io';

import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:web_socket_channel/io.dart';

import 'package:cookie_jar/cookie_jar.dart';

final String wsUrl = 'ws://$host/api/messages';
final String loginUrl = 'http://$host/api/sessions';
final String getMessageUrl = 'http://$host/api/sessions';

Future<void> main() async {
  final HttpClient client = HttpClient();

  var request = await client.postUrl(Uri.parse(loginUrl));
  request.headers.set(HttpHeaders.contentTypeHeader, 'application/json');
  request.headers.set(HttpHeaders.acceptHeader, 'application/json');
  request.write(jsonEncode({
    "email": 'amandasoo@gmail.com',
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
    "id": "2e8c8d36-c69a-4921-a980-9f33bc414c83",
    "senderId": "aa88e5d0-cfff-11ea-b920-f368f2c88e7c",
    "receiverId": "8828b240-cfff-11ea-ec27-890a702fa47f",
//    "content": "Hey...",
//    "content": "Yeah sure! I've accepted your request.",
    "content": "Okay! See you then.",
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
