import 'package:flutter/material.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';
import 'package:tuple/tuple.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/time_slot.dart';

class SlotDisplay extends StatelessWidget {
  final DateTime selected;

  const SlotDisplay({Key key, this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final slotInfo = Provider.of<SlotInfo>(context);

    List<Tuple2<TimeRangeResult, String>> getSlots() {
      List<Tuple2<TimeRangeResult, String>> list = [];
      for (int index = 0; index < slotInfo.display.length; index++) {
        DateTime date = slotInfo.display[index].item1;
        if (selected.year == date.year &&
            selected.day == date.day &&
            selected.month == date.month) {
          list = slotInfo.display[index].item2;
        }
      }
      return list;
    }

    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Expanded(
          child: Card(
              elevation: 0,
              color: Palette.backgroundColor,
              child: GridView.count(
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
                  crossAxisCount: 4,
                  /** List<Tuple2<DateTime, List<Tuple2<TimeRangeResult, String>>>> */
                  children: List.generate(getSlots().length, (index) {
                    Tuple2<TimeRangeResult, String> slot = getSlots()[index];
                    return TimeSlot(range: slot.item1, status: slot.item2);
                  }))))
    ]);
  }
}
