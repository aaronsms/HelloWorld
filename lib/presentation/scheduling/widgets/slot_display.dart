import 'package:flutter/material.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';
import 'package:tuple/tuple.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/time_slot.dart';

class SlotDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var slotInfo = Provider.of<SlotInfo>(context);
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Expanded(
          child: Card(
              elevation: 0,
              color: Palette.backgroundColor,
              child: GridView.count(
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
                  crossAxisCount: 4,
                  children: List.generate(slotInfo.display.length, (index) {
                    Tuple2<TimeRangeResult, String> slot =
                        slotInfo.display[index];
                    return TimeSlot(range: slot.item1, status: slot.item2);
                  }))))
    ]);
  }
}
