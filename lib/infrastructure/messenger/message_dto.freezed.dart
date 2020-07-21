// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

class _$MessageDtoTearOff {
  const _$MessageDtoTearOff();

  _MessageDto call(
      {@required String id,
      @required String content,
      @required String senderId,
      @required String senderName,
      @required String receiverId,
      @required String receiverName,
      @required DateTime sendDate,
      DateTime notifyDate,
      @required bool isRead}) {
    return _MessageDto(
      id: id,
      content: content,
      senderId: senderId,
      senderName: senderName,
      receiverId: receiverId,
      receiverName: receiverName,
      sendDate: sendDate,
      notifyDate: notifyDate,
      isRead: isRead,
    );
  }
}

// ignore: unused_element
const $MessageDto = _$MessageDtoTearOff();

mixin _$MessageDto {
  String get id;
  String get content;
  String get senderId;
  String get senderName;
  String get receiverId;
  String get receiverName;
  DateTime get sendDate;
  DateTime get notifyDate;
  bool get isRead;

  Map<String, dynamic> toJson();
  $MessageDtoCopyWith<MessageDto> get copyWith;
}

abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String content,
      String senderId,
      String senderName,
      String receiverId,
      String receiverName,
      DateTime sendDate,
      DateTime notifyDate,
      bool isRead});
}

class _$MessageDtoCopyWithImpl<$Res> implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  final MessageDto _value;
  // ignore: unused_field
  final $Res Function(MessageDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object senderId = freezed,
    Object senderName = freezed,
    Object receiverId = freezed,
    Object receiverName = freezed,
    Object sendDate = freezed,
    Object notifyDate = freezed,
    Object isRead = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      content: content == freezed ? _value.content : content as String,
      senderId: senderId == freezed ? _value.senderId : senderId as String,
      senderName:
          senderName == freezed ? _value.senderName : senderName as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as String,
      receiverName: receiverName == freezed
          ? _value.receiverName
          : receiverName as String,
      sendDate: sendDate == freezed ? _value.sendDate : sendDate as DateTime,
      notifyDate:
          notifyDate == freezed ? _value.notifyDate : notifyDate as DateTime,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
    ));
  }
}

abstract class _$MessageDtoCopyWith<$Res> implements $MessageDtoCopyWith<$Res> {
  factory _$MessageDtoCopyWith(
          _MessageDto value, $Res Function(_MessageDto) then) =
      __$MessageDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String content,
      String senderId,
      String senderName,
      String receiverId,
      String receiverName,
      DateTime sendDate,
      DateTime notifyDate,
      bool isRead});
}

class __$MessageDtoCopyWithImpl<$Res> extends _$MessageDtoCopyWithImpl<$Res>
    implements _$MessageDtoCopyWith<$Res> {
  __$MessageDtoCopyWithImpl(
      _MessageDto _value, $Res Function(_MessageDto) _then)
      : super(_value, (v) => _then(v as _MessageDto));

  @override
  _MessageDto get _value => super._value as _MessageDto;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object senderId = freezed,
    Object senderName = freezed,
    Object receiverId = freezed,
    Object receiverName = freezed,
    Object sendDate = freezed,
    Object notifyDate = freezed,
    Object isRead = freezed,
  }) {
    return _then(_MessageDto(
      id: id == freezed ? _value.id : id as String,
      content: content == freezed ? _value.content : content as String,
      senderId: senderId == freezed ? _value.senderId : senderId as String,
      senderName:
          senderName == freezed ? _value.senderName : senderName as String,
      receiverId:
          receiverId == freezed ? _value.receiverId : receiverId as String,
      receiverName: receiverName == freezed
          ? _value.receiverName
          : receiverName as String,
      sendDate: sendDate == freezed ? _value.sendDate : sendDate as DateTime,
      notifyDate:
          notifyDate == freezed ? _value.notifyDate : notifyDate as DateTime,
      isRead: isRead == freezed ? _value.isRead : isRead as bool,
    ));
  }
}

@JsonSerializable()
class _$_MessageDto extends _MessageDto {
  const _$_MessageDto(
      {@required this.id,
      @required this.content,
      @required this.senderId,
      @required this.senderName,
      @required this.receiverId,
      @required this.receiverName,
      @required this.sendDate,
      this.notifyDate,
      @required this.isRead})
      : assert(id != null),
        assert(content != null),
        assert(senderId != null),
        assert(senderName != null),
        assert(receiverId != null),
        assert(receiverName != null),
        assert(sendDate != null),
        assert(isRead != null),
        super._();

  factory _$_MessageDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageDtoFromJson(json);

  @override
  final String id;
  @override
  final String content;
  @override
  final String senderId;
  @override
  final String senderName;
  @override
  final String receiverId;
  @override
  final String receiverName;
  @override
  final DateTime sendDate;
  @override
  final DateTime notifyDate;
  @override
  final bool isRead;

  @override
  String toString() {
    return 'MessageDto(id: $id, content: $content, senderId: $senderId, senderName: $senderName, receiverId: $receiverId, receiverName: $receiverName, sendDate: $sendDate, notifyDate: $notifyDate, isRead: $isRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.senderId, senderId) ||
                const DeepCollectionEquality()
                    .equals(other.senderId, senderId)) &&
            (identical(other.senderName, senderName) ||
                const DeepCollectionEquality()
                    .equals(other.senderName, senderName)) &&
            (identical(other.receiverId, receiverId) ||
                const DeepCollectionEquality()
                    .equals(other.receiverId, receiverId)) &&
            (identical(other.receiverName, receiverName) ||
                const DeepCollectionEquality()
                    .equals(other.receiverName, receiverName)) &&
            (identical(other.sendDate, sendDate) ||
                const DeepCollectionEquality()
                    .equals(other.sendDate, sendDate)) &&
            (identical(other.notifyDate, notifyDate) ||
                const DeepCollectionEquality()
                    .equals(other.notifyDate, notifyDate)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(senderId) ^
      const DeepCollectionEquality().hash(senderName) ^
      const DeepCollectionEquality().hash(receiverId) ^
      const DeepCollectionEquality().hash(receiverName) ^
      const DeepCollectionEquality().hash(sendDate) ^
      const DeepCollectionEquality().hash(notifyDate) ^
      const DeepCollectionEquality().hash(isRead);

  @override
  _$MessageDtoCopyWith<_MessageDto> get copyWith =>
      __$MessageDtoCopyWithImpl<_MessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageDtoToJson(this);
  }
}

abstract class _MessageDto extends MessageDto {
  const _MessageDto._() : super._();
  const factory _MessageDto(
      {@required String id,
      @required String content,
      @required String senderId,
      @required String senderName,
      @required String receiverId,
      @required String receiverName,
      @required DateTime sendDate,
      DateTime notifyDate,
      @required bool isRead}) = _$_MessageDto;

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$_MessageDto.fromJson;

  @override
  String get id;
  @override
  String get content;
  @override
  String get senderId;
  @override
  String get senderName;
  @override
  String get receiverId;
  @override
  String get receiverName;
  @override
  DateTime get sendDate;
  @override
  DateTime get notifyDate;
  @override
  bool get isRead;
  @override
  _$MessageDtoCopyWith<_MessageDto> get copyWith;
}
