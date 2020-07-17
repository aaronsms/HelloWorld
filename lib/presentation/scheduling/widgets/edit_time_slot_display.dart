import 'package:time_range/time_range.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/edit_time_slot.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';

class EditTimeSlotDisplay extends StatelessWidget {
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
                  crossAxisCount: 3,
                  children: List.generate(slotInfo.slots.length + 1, (index) {
                    if (index < slotInfo.slots.length) {
                      final TimeRangeResult slot = slotInfo.slots[index];
                      return EditTimeSlot(
                          range: "${slot.start.hhmm()} - ${slot.end.hhmm()}");
                    } else {
                      return const EditTimeSlot(range: "+");
                    }
                  }))))
    ]);
  }
}
