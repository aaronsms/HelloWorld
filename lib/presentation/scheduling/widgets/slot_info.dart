import 'package:tuple/tuple.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:time_range/time_range.dart';

class SlotInfo with ChangeNotifier {
  // List<Tuple2<TimeOfDay, TimeOfDay>> _slots = [
  //   const Tuple2<TimeOfDay, TimeOfDay>(
  //       TimeOfDay(hour: 8, minute: 00), TimeOfDay(hour: 9, minute: 00)),
  //   const Tuple2<TimeOfDay, TimeOfDay>(
  //       TimeOfDay(hour: 9, minute: 00), TimeOfDay(hour: 9, minute: 30)),
  //   const Tuple2<TimeOfDay, TimeOfDay>(
  //       TimeOfDay(hour: 10, minute: 00), TimeOfDay(hour: 11, minute: 00)),
  //   const Tuple2<TimeOfDay, TimeOfDay>(
  //       TimeOfDay(hour: 13, minute: 00), TimeOfDay(hour: 14, minute: 00)),
  //   const Tuple2<TimeOfDay, TimeOfDay>(
  //       TimeOfDay(hour: 14, minute: 00), TimeOfDay(hour: 14, minute: 30)),
  //   const Tuple2<TimeOfDay, TimeOfDay>(
  //       TimeOfDay(hour: 20, minute: 00), TimeOfDay(hour: 20, minute: 30)),
  //   const Tuple2<TimeOfDay, TimeOfDay>(
  //       TimeOfDay(hour: 21, minute: 00), TimeOfDay(hour: 21, minute: 30)),
  // ];

  List<TimeRangeResult> _slots = [
    TimeRangeResult(const TimeOfDay(hour: 8, minute: 00),
        const TimeOfDay(hour: 9, minute: 00)),
    TimeRangeResult(const TimeOfDay(hour: 9, minute: 00),
        const TimeOfDay(hour: 9, minute: 30)),
    TimeRangeResult(const TimeOfDay(hour: 10, minute: 00),
        const TimeOfDay(hour: 11, minute: 00)),
    TimeRangeResult(const TimeOfDay(hour: 13, minute: 00),
        const TimeOfDay(hour: 14, minute: 00)),
    TimeRangeResult(const TimeOfDay(hour: 14, minute: 00),
        const TimeOfDay(hour: 14, minute: 30)),
    TimeRangeResult(const TimeOfDay(hour: 20, minute: 00),
        const TimeOfDay(hour: 20, minute: 30)),
    TimeRangeResult(const TimeOfDay(hour: 21, minute: 00),
        const TimeOfDay(hour: 21, minute: 30)),
  ];

  TimeRangeResult _slot = TimeRangeResult(const TimeOfDay(hour: 8, minute: 00),
      const TimeOfDay(hour: 8, minute: 30));

  List<TimeRangeResult> get slots => _slots;
  TimeRangeResult get slot => _slot;

  // ignore: avoid_setters_without_getters
  set edit(List<TimeRangeResult> newSlots) {
    _slots = newSlots;
    notifyListeners();
  }

  set change(TimeRangeResult newSlot) {
    _slot = newSlot;
    notifyListeners();
  }
}
