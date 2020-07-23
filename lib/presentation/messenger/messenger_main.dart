import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/messenger/message_bloc.dart';
import 'package:helloworld/domain/messenger/message.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/messenger/widgets/category_selector.dart';
import 'package:helloworld/presentation/messenger/widgets/user.dart';
import 'package:helloworld/presentation/messenger/widgets/recent_chat.dart';

// ignore: must_be_immutable
class MessengerMain extends StatelessWidget {
  static const userId =
      'd1749d79-f2d8-4c64-88e1-8ef80d37d6c1'; // TODO production
  bool _otherUserIsSenderOrReceiver(Message message) {
    return message.sender.id.getOrCrash() != userId;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      appBar: AppBar(
        backgroundColor: Palette.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          iconSize: 30.0,
          color: Palette.primaryColor,
          onPressed: () {},
        ),
        title: Center(
            child: Text("Chats",
                style: TextStyle(
                    fontFamily: 'Martel Sans',
                    fontSize: 28.0,
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w900))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Palette.primaryColor,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 15.0),
                    child: Text(
                      "Recent Contacts",
                      style: TextStyle(
                          color: Palette.secondaryColor,
                          fontSize: 16,
                          fontFamily: 'Martel Sans',
                          letterSpacing: 1,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    height: 130,
                    child: BlocBuilder<MessageBloc, MessageState>(
                      builder: (_, state) {
                        return state.maybeWhen(
                          orElse: () => Container(color: Colors.white),
                          loaded: (conversations, _, __) {
                            return ListView.builder(
                              padding: const EdgeInsets.only(left: 10.0),
                              scrollDirection: Axis.horizontal,
                              itemCount: conversations.length,
                              itemBuilder: (BuildContext context, int index) {
                                final contact = conversations[index];
                                if (_otherUserIsSenderOrReceiver(contact)) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RecentContact(
                                      id: contact.sender.id,
                                      name: contact.sender.name.getOrCrash(),
                                    ),
                                  );
                                } else {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RecentContact(
                                      id: contact.receiver.id,
                                      name: contact.receiver.name.getOrCrash(),
                                    ),
                                  );
                                }
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const Divider(color: Palette.tertiaryColor),
                  RecentChat(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
