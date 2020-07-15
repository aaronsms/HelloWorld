import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:time_range/time_range.dart';

class SlotInfo with ChangeNotifier {
  List<String> _slots = [
    "08:00 - 09:00",
    "09:00 - 09:30",
    "10:00 - 11:00",
    "13:00 - 14:00",
    "14:00 - 14:30",
    "20:00 - 20:30",
    "20:30 - 21:00",
    "21:00 - 21:30",
    "+"
  ];

  TimeRangeResult _slot = TimeRangeResult(
      TimeOfDay(hour: 8, minute: 00), TimeOfDay(hour: 8, minute: 30));

  List<String> get slots => _slots;
  TimeRangeResult get slot => _slot;

  // ignore: avoid_setters_without_getters
  set edit(List<String> newSlots) {
    _slots = newSlots;
    notifyListeners();
  }

  set change(TimeRangeResult newSlot) {
    _slot = newSlot;
    notifyListeners();
  }
}
