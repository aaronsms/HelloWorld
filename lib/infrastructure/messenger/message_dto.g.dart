// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageDto _$_$_MessageDtoFromJson(Map<String, dynamic> json) {
  return _$_MessageDto(
    id: json['id'] as String,
    content: json['content'] as String,
    senderId: json['senderId'] as String,
    senderName: json['senderName'] as String,
    receiverId: json['receiverId'] as String,
    receiverName: json['receiverName'] as String,
    sendDate: json['sendDate'] == null
        ? null
        : DateTime.parse(json['sendDate'] as String),
    notifyDate: json['notifyDate'] == null
        ? null
        : DateTime.parse(json['notifyDate'] as String),
    isRead: json['isRead'] as bool,
  );
}

Map<String, dynamic> _$_$_MessageDtoToJson(_$_MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'senderId': instance.senderId,
      'senderName': instance.senderName,
      'receiverId': instance.receiverId,
      'receiverName': instance.receiverName,
      'sendDate': instance.sendDate?.toIso8601String(),
      'notifyDate': instance.notifyDate?.toIso8601String(),
      'isRead': instance.isRead,
    };
