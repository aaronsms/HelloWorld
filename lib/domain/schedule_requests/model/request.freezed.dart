// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RequestTearOff {
  const _$RequestTearOff();

  _Request call(
      {@required RequestId id,
      @required Sender sender,
      @required Receiver receiver,
      @required ProposedTimeSlot timeSlot,
      @required ProposedLocation location}) {
    return _Request(
      id: id,
      sender: sender,
      receiver: receiver,
      timeSlot: timeSlot,
      location: location,
    );
  }
}

// ignore: unused_element
const $Request = _$RequestTearOff();

mixin _$Request {
  RequestId get id;
  Sender get sender;
  Receiver get receiver;
  ProposedTimeSlot get timeSlot;
  ProposedLocation get location;

  $RequestCopyWith<Request> get copyWith;
}

abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call(
      {RequestId id,
      Sender sender,
      Receiver receiver,
      ProposedTimeSlot timeSlot,
      ProposedLocation location});
}

class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;

  @override
  $Res call({
    Object id = freezed,
    Object sender = freezed,
    Object receiver = freezed,
    Object timeSlot = freezed,
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as RequestId,
      sender: sender == freezed ? _value.sender : sender as Sender,
      receiver: receiver == freezed ? _value.receiver : receiver as Receiver,
      timeSlot:
          timeSlot == freezed ? _value.timeSlot : timeSlot as ProposedTimeSlot,
      location:
          location == freezed ? _value.location : location as ProposedLocation,
    ));
  }
}

abstract class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) then) =
      __$RequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {RequestId id,
      Sender sender,
      Receiver receiver,
      ProposedTimeSlot timeSlot,
      ProposedLocation location});
}

class __$RequestCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(_Request _value, $Res Function(_Request) _then)
      : super(_value, (v) => _then(v as _Request));

  @override
  _Request get _value => super._value as _Request;

  @override
  $Res call({
    Object id = freezed,
    Object sender = freezed,
    Object receiver = freezed,
    Object timeSlot = freezed,
    Object location = freezed,
  }) {
    return _then(_Request(
      id: id == freezed ? _value.id : id as RequestId,
      sender: sender == freezed ? _value.sender : sender as Sender,
      receiver: receiver == freezed ? _value.receiver : receiver as Receiver,
      timeSlot:
          timeSlot == freezed ? _value.timeSlot : timeSlot as ProposedTimeSlot,
      location:
          location == freezed ? _value.location : location as ProposedLocation,
    ));
  }
}

class _$_Request implements _Request {
  const _$_Request(
      {@required this.id,
      @required this.sender,
      @required this.receiver,
      @required this.timeSlot,
      @required this.location})
      : assert(id != null),
        assert(sender != null),
        assert(receiver != null),
        assert(timeSlot != null),
        assert(location != null);

  @override
  final RequestId id;
  @override
  final Sender sender;
  @override
  final Receiver receiver;
  @override
  final ProposedTimeSlot timeSlot;
  @override
  final ProposedLocation location;

  @override
  String toString() {
    return 'Request(id: $id, sender: $sender, receiver: $receiver, timeSlot: $timeSlot, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Request &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)) &&
            (identical(other.timeSlot, timeSlot) ||
                const DeepCollectionEquality()
                    .equals(other.timeSlot, timeSlot)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiver) ^
      const DeepCollectionEquality().hash(timeSlot) ^
      const DeepCollectionEquality().hash(location);

  @override
  _$RequestCopyWith<_Request> get copyWith =>
      __$RequestCopyWithImpl<_Request>(this, _$identity);
}

abstract class _Request implements Request {
  const factory _Request(
      {@required RequestId id,
      @required Sender sender,
      @required Receiver receiver,
      @required ProposedTimeSlot timeSlot,
      @required ProposedLocation location}) = _$_Request;

  @override
  RequestId get id;
  @override
  Sender get sender;
  @override
  Receiver get receiver;
  @override
  ProposedTimeSlot get timeSlot;
  @override
  ProposedLocation get location;
  @override
  _$RequestCopyWith<_Request> get copyWith;
}
