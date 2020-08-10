import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/messenger/message_bloc.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/domain/messenger/message.dart';
import 'package:helloworld/domain/messenger/receiver.dart';
import 'package:helloworld/domain/messenger/sender.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/messenger/widgets/message.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  final String otherUser;
  final UserId otherUserId;
  final String userId;

  const ChatScreen({Key key, this.otherUser, this.otherUserId, this.userId})
      : super(key: key);

  Container _buildMessage(MessageUi message, bool isAdmin) {
    String _toHoursMinutes(DateTime dateTime) {
      String _twoDigits(int x) {
        return x <= 9 ? '0$x' : x.toString();
      }

      return '${_twoDigits(dateTime.hour)}:${_twoDigits(dateTime.minute)}';
    }

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
              Text(_toHoursMinutes(message.time),
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
            child: Text(otherUser,
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
        child: BlocBuilder<MessageBloc, MessageState>(
          builder: (_, state) => state.maybeMap(
            loaded: (state) => Column(
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
                        itemCount: state.messages.length,
                        itemBuilder: (_, index) {
                          bool _userIsSenderOrReceiver(Message message) {
                            return message.sender.id.getOrCrash() ==
                                userId;
                          }

                          final userIsSenderOrReceiver =
                              _userIsSenderOrReceiver(state.messages[index]);
                          final MessageUi message = MessageUi(
                            otherUser: userIsSenderOrReceiver
                                ? state.messages[index].receiver.name
                                    .getOrCrash()
                                : state.messages[index].sender.name
                                    .getOrCrash(),
                            text: state.messages[index].content.getOrCrash(),
                            unread: state.messages[index].read.getOrCrash(),
                            time: state.messages[index].time.getOrCrash(),
                            id: userIsSenderOrReceiver
                                ? state.messages[index].receiver.id
                                : state.messages[index].sender.id,
                          );
                          return _buildMessage(message, userIsSenderOrReceiver);
                        },
                      ),
                    ),
                  ),
                ),
                Provider(
                  create: (_) => ValueNotifier<String>(''),
                  child: MessageComposer(userId: userId, otherUserId: otherUserId),
                )
              ],
            ),
            loading: (state) => Column(
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
                        itemCount: state.messages.length,
                        itemBuilder: (_, index) {
                          bool _userIsSenderOrReceiver(Message message) {
                            return message.sender.id.getOrCrash() ==
                                userId;
                          }

                          final userIsSenderOrReceiver =
                              _userIsSenderOrReceiver(state.messages[index]);
                          final MessageUi message = MessageUi(
                            otherUser: userIsSenderOrReceiver
                                ? state.messages[index].receiver.name
                                    .getOrCrash()
                                : state.messages[index].sender.name
                                    .getOrCrash(),
                            text: state.messages[index].content.getOrCrash(),
                            unread: state.messages[index].read.getOrCrash(),
                            time: state.messages[index].time.getOrCrash(),
                            id: userIsSenderOrReceiver
                                ? state.messages[index].receiver.id
                                : state.messages[index].sender.id,
                          );
                          return _buildMessage(message, userIsSenderOrReceiver);
                        },
                      )),
                )),
                Provider(
                  create: (_) => ValueNotifier<String>(''),
                  child: MessageComposer(userId: userId, otherUserId: otherUserId),
                )
              ],
            ),
            orElse: () => Container(),
          ),
        ),
      ),
    );
  }
}

class MessageComposer extends StatelessWidget {
  final String userId;
  final UserId otherUserId;
  final TextEditingController controller;

  MessageComposer({Key key, this.otherUserId, this.userId})
      : controller = TextEditingController(text: ''),
        super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    controller: controller,
                    textCapitalization: TextCapitalization.sentences,
                    onChanged: (value) {
                      context.read<ValueNotifier<String>>().value = value;
                    },
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
                            context.bloc<MessageBloc>().add(
                                  MessageEvent.sendMessage(
                                    Message.create(
                                      senderId: SenderId.fromUniqueId(userId),
                                      receiverId: ReceiverId.fromUniqueId(
                                          otherUserId.getOrCrash()),
                                      content: Content(context
                                          .read<ValueNotifier<String>>()
                                          .value),
                                    ),
                                  ),
                                );

                            controller.clear();
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
}
