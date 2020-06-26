import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/common/entity.dart';
import 'package:helloworld/domain/schedule_requests/model/proposed_location.dart';
import 'package:helloworld/domain/schedule_requests/model/proposed_time_slot.dart';
import 'package:helloworld/domain/schedule_requests/model/receiver.dart';
import 'package:helloworld/domain/schedule_requests/model/request_id.dart';
import 'package:helloworld/domain/schedule_requests/model/sender.dart';

part 'request.freezed.dart';

@freezed
abstract class Request with _$Request implements Entity {
  const factory Request({
    @required RequestId id,
    @required Sender sender,
    @required Receiver receiver,
    @required ProposedTimeSlot timeSlot,
    @required ProposedLocation location,
  }) = _Request;
}
