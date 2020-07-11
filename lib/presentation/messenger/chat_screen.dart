import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/messenger/widgets/message.dart';

class ChatScreen extends StatefulWidget {
  final String sender;
  const ChatScreen({Key key, @required this.sender}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Message> messages = [
    const Message(
        id: 0,
        sender: "Admin",
        time: "12:43",
        text:
            "Which location is convenient for you to meet-up this coming Monday?",
        unread: false),
    const Message(
        id: 0,
        sender: "Admin",
        time: "12:42",
        text: "Muy bien, gracias. ¿Y tú?",
        unread: false),
    const Message(
        id: 1,
        sender: "Chelsea",
        time: "12:40",
        text: "Hola, cómo estás?",
        unread: false),
  ];

  Container _buildMessage(Message message, bool isAdmin) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: isAdmin
              ? const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20.0))
              : const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20.0)),
          color: isAdmin ? Palette.secondaryColor : Palette.primaryColor,
        ),
        margin: isAdmin
            ? const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
            : const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0),
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(message.time,
                  style: TextStyle(
                      fontFamily: 'Martel Sans',
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900)),
              Text(message.text,
                  style: TextStyle(
                      fontFamily: 'Martel Sans',
                      fontSize: 15.0,
                      color: Colors.white,
                      height: 1.5,
                      fontWeight: FontWeight.w600)),
            ]));
  }

  Container _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Palette.backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    textCapitalization: TextCapitalization.sentences,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: IconButton(
                          icon: const Icon(Icons.location_on),
                          iconSize: 25.0,
                          color: Palette.primaryColor,
                          onPressed: () {
                            /** OPENS MAPS */
                          },
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.send),
                          iconSize: 25.0,
                          color: Palette.primaryColor,
                          onPressed: () {
                            /** CREATES A MESSAGE */
                          },
                        ),
                        hintStyle: TextStyle(
                            fontFamily: 'Martel Sans',
                            fontSize: 15.0,
                            color: Palette.primaryColor,
                            height: 1.5,
                            fontWeight: FontWeight.w900),
                        hintText: 'Send a message...'),
                  ))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            iconSize: 30.0,
            color: Palette.primaryColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
              child: Text(widget.sender,
                  style: TextStyle(
                      fontFamily: 'Martel Sans',
                      fontSize: 28.0,
                      color: Palette.primaryColor,
                      fontWeight: FontWeight.w900))),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_horiz),
              iconSize: 30.0,
              color: Palette.primaryColor,
              onPressed: () {},
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Palette.backgroundColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0)),
                    child: ListView.builder(
                      reverse: true,
                      padding: const EdgeInsets.only(top: 30.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message message = messages[index];
                        final bool isAdmin = message.sender == "Admin";
                        return _buildMessage(message, isAdmin);
                      },
                    )),
              )),
              _buildMessageComposer()
            ],
          ),
        ));
  }
}
