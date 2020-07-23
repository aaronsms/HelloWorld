// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {MessageId id,
      MessageSender sender,
      MessageReceiver receiver,
      Content content,
      HasRead read,
      SendDate time}) {
    return _Message(
      id: id,
      sender: sender,
      receiver: receiver,
      content: content,
      read: read,
      time: time,
    );
  }
}

// ignore: unused_element
const $Message = _$MessageTearOff();

mixin _$Message {
  MessageId get id;
  MessageSender get sender;
  MessageReceiver get receiver;
  Content get content;
  HasRead get read;
  SendDate get time;

  $MessageCopyWith<Message> get copyWith;
}

abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {MessageId id,
      MessageSender sender,
      MessageReceiver receiver,
      Content content,
      HasRead read,
      SendDate time});
}

class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object id = freezed,
    Object sender = freezed,
    Object receiver = freezed,
    Object content = freezed,
    Object read = freezed,
    Object time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as MessageId,
      sender: sender == freezed ? _value.sender : sender as MessageSender,
      receiver:
          receiver == freezed ? _value.receiver : receiver as MessageReceiver,
      content: content == freezed ? _value.content : content as Content,
      read: read == freezed ? _value.read : read as HasRead,
      time: time == freezed ? _value.time : time as SendDate,
    ));
  }
}

abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {MessageId id,
      MessageSender sender,
      MessageReceiver receiver,
      Content content,
      HasRead read,
      SendDate time});
}

class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object id = freezed,
    Object sender = freezed,
    Object receiver = freezed,
    Object content = freezed,
    Object read = freezed,
    Object time = freezed,
  }) {
    return _then(_Message(
      id: id == freezed ? _value.id : id as MessageId,
      sender: sender == freezed ? _value.sender : sender as MessageSender,
      receiver:
          receiver == freezed ? _value.receiver : receiver as MessageReceiver,
      content: content == freezed ? _value.content : content as Content,
      read: read == freezed ? _value.read : read as HasRead,
      time: time == freezed ? _value.time : time as SendDate,
    ));
  }
}

class _$_Message implements _Message {
  const _$_Message(
      {this.id,
      this.sender,
      this.receiver,
      this.content,
      this.read,
      this.time});

  @override
  final MessageId id;
  @override
  final MessageSender sender;
  @override
  final MessageReceiver receiver;
  @override
  final Content content;
  @override
  final HasRead read;
  @override
  final SendDate time;

  @override
  String toString() {
    return 'Message(id: $id, sender: $sender, receiver: $receiver, content: $content, read: $read, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Message &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.read, read) ||
                const DeepCollectionEquality().equals(other.read, read)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiver) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(read) ^
      const DeepCollectionEquality().hash(time);

  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);
}

abstract class _Message implements Message {
  const factory _Message(
      {MessageId id,
      MessageSender sender,
      MessageReceiver receiver,
      Content content,
      HasRead read,
      SendDate time}) = _$_Message;

  @override
  MessageId get id;
  @override
  MessageSender get sender;
  @override
  MessageReceiver get receiver;
  @override
  Content get content;
  @override
  HasRead get read;
  @override
  SendDate get time;
  @override
  _$MessageCopyWith<_Message> get copyWith;
}
