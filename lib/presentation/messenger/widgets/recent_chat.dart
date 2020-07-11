import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/messenger/widgets/message.dart';
import 'package:helloworld/presentation/messenger/chat_screen.dart';

// ignore: must_be_immutable
class RecentChat extends StatelessWidget {
  List<Message> chats = [
    const Message(
        sender: "Chelsea",
        id: 1,
        time: "13:20",
        text: "Hello there! I am Chelsea, and I am learning Spanish.",
        unread: true),
    const Message(
        sender: "John",
        id: 2,
        time: "14:21",
        text: "Hello there! I am John, and I am learning Spanish.",
        unread: false),
    const Message(
        sender: "Samuel",
        id: 3,
        time: "14:25",
        text: "Hello there! I am Samuel, and I am learning Spanish.",
        unread: false),
    const Message(
        sender: "Shawn",
        id: 4,
        time: "16:13",
        text: "Hello there! I am Shawn, and I am learning Spanish.",
        unread: false),
    const Message(
        sender: "Fatimah",
        id: 5,
        time: "17:29",
        text: "Hello there! I am Fatimah, and I am learning Spanish.",
        unread: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: chats.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => ChatScreen(sender: chats[index].sender)),
                ),
            child: Padding(
                padding: const EdgeInsets.all(8.0), child: chats[index]));
      },
    ));
  }
}
