import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/edit_time_slot.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';

class EditTimeSlotDisplay extends StatelessWidget {
  //["08:00 - 09:00", "09:00 - 09:30", "+"]
  // const EditTimeSlotDisplay({
  //   Key key,
  //   @required this.slots,
  // }) : super(key: key);

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
                  children: List.generate(slotInfo.slots.length, (index) {
                    return EditTimeSlot(range: slotInfo.slots[index]);
                  }))))
    ]);
  }
}
