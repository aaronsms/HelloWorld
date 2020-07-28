import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helloworld/application/messenger/message_bloc.dart';
import 'package:helloworld/domain/messenger/message.dart';
import 'package:helloworld/presentation/messenger/widgets/message.dart';
import 'package:helloworld/presentation/messenger/chat_screen.dart';

// ignore: must_be_immutable
class RecentChat extends StatelessWidget {
  static const userId = '8828b240-cfff-11ea-ec27-890a702fa47f'; // TODO production

  bool _userIsSenderOrReceiver(Message message) {
    return message.sender.id.getOrCrash() == userId;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (_, state) => state.maybeWhen(
          loaded: (conversations, _, __) {
            return Expanded(
              child: ListView.builder(
                itemCount: conversations.length,
                itemBuilder: (BuildContext context, int index) {
                  final conversation = conversations[index];
                  final userIsSenderOrReceiver =
                      _userIsSenderOrReceiver(conversation);
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => userIsSenderOrReceiver
                            ? BlocProvider.value(
                              value: context.bloc<MessageBloc>()..add(MessageEvent.getMessagesWith(conversation.receiver.id)),
                              child: ChatScreen(
                                  otherUser: conversation.receiver.name.getOrCrash(),
                                  otherUserId: conversation.receiver.id,
                                ),
                            )
                            : BlocProvider.value(
                              value: context.bloc<MessageBloc>()..add(MessageEvent.getMessagesWith(conversation.sender.id)),
                              child: ChatScreen(
                                  otherUser: conversation.sender.name.getOrCrash(),
                                  otherUserId: conversation.sender.id,
                                ),
                            ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MessageUi(
                        otherUser: userIsSenderOrReceiver
                            ? conversations[index].receiver.name.getOrCrash()
                            : conversations[index].sender.name.getOrCrash(),
                        text: conversations[index].content.getOrCrash(),
                        unread: conversations[index].read.getOrCrash(),
                        time: conversations[index].time.getOrCrash(),
                        id: userIsSenderOrReceiver
                            ? conversations[index].receiver.id
                            : conversations[index].sender.id,
                      ),
                    ),
                  );
                },
              ),
            );
          },
          orElse: () => Container(color: Colors.white)),
    );
  }
}
