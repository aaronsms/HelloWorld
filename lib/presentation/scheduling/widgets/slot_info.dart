import 'package:tuple/tuple.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:time_range/time_range.dart';

class SlotInfo with ChangeNotifier {
  // DISPLAY OF SLOTS */
  // MOCK DATA FOR 19, 20 JULY */
  List<Tuple2<DateTime, List<Tuple2<TimeRangeResult, String>>>> _display = [
    /** 19 JULY */
    Tuple2(DateTime.utc(2020, 8, 18).toLocal(), [
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 8, minute: 00),
              const TimeOfDay(hour: 9, minute: 00)),
          "AVAILABLE"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 10, minute: 00),
              const TimeOfDay(hour: 11, minute: 00)),
          "PENDING"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 12, minute: 00),
              const TimeOfDay(hour: 13, minute: 00)),
          "AVAILABLE"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 13, minute: 30),
              const TimeOfDay(hour: 14, minute: 00)),
          "UNAVAILABLE"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 15, minute: 00),
              const TimeOfDay(hour: 15, minute: 30)),
          "AVAILABLE")
    ]),
    /** 20 JULY */
    Tuple2(DateTime.utc(2020, 8, 21).toLocal(), [
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 8, minute: 00),
              const TimeOfDay(hour: 9, minute: 00)),
          "AVAILABLE"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 10, minute: 00),
              const TimeOfDay(hour: 11, minute: 00)),
          "PENDING"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 12, minute: 00),
              const TimeOfDay(hour: 13, minute: 00)),
          "AVAILABLE"),
    ]),
    Tuple2(DateTime.utc(2020, 8, 20).toLocal(), [
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 8, minute: 00),
              const TimeOfDay(hour: 9, minute: 00)),
          "AVAILABLE"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 10, minute: 00),
              const TimeOfDay(hour: 11, minute: 00)),
          "PENDING"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 12, minute: 00),
              const TimeOfDay(hour: 13, minute: 00)),
          "AVAILABLE"),
    ]),
    Tuple2(DateTime.utc(2020, 8, 16).toLocal(), [
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 8, minute: 00),
              const TimeOfDay(hour: 9, minute: 00)),
          "AVAILABLE"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 10, minute: 00),
              const TimeOfDay(hour: 11, minute: 00)),
          "PENDING"),
      Tuple2(
          TimeRangeResult(const TimeOfDay(hour: 12, minute: 00),
              const TimeOfDay(hour: 13, minute: 00)),
          "AVAILABLE"),
    ])
  ];

  /// EDITING SLOTS */
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

  final List<TimeRangeResult> _selected = <TimeRangeResult>[];

  List<Tuple2<DateTime, List<Tuple2<TimeRangeResult, String>>>> get display =>
      _display;
  List<TimeRangeResult> get slots => _slots;
  TimeRangeResult get slot => _slot;
  List<TimeRangeResult> get selected => _selected;

  // ignore: avoid_setters_without_getters
  set edit(List<TimeRangeResult> newSlots) {
    _slots = newSlots;
    notifyListeners();
  }

  // ignore: avoid_setters_without_getters
  set change(TimeRangeResult newSlot) {
    _slot = newSlot;
    notifyListeners();
  }

  set display(
      List<Tuple2<DateTime, List<Tuple2<TimeRangeResult, String>>>> newSlots) {
    _display = newSlots;
    notifyListeners();
  }

  // ignore: avoid_setters_without_getters
  set select(TimeRangeResult newSlot) {
    _selected.add(newSlot);
    notifyListeners();
  }

  // ignore: avoid_setters_without_getters
  set deselect(TimeRangeResult newSlot) {
    _selected.removeWhere((slot) => slot == newSlot);
    notifyListeners();
  }
}
