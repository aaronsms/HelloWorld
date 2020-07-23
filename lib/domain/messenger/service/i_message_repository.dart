import 'package:dartz/dartz.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/domain/messenger/message.dart';

import 'message_failure.dart';

abstract class IMessageRepository {
  Future<Either<MessageFailure, List<Message>>> getAllConversations();
  Future<Either<MessageFailure, List<Message>>> getAllMessagesWith(UserId otherUserId);
  Future<Either<MessageFailure, Message>> getMessage(MessageId messageId);
}