import 'package:flutter/material.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

class DeleteTimeSlot extends StatelessWidget {
  final String range;
  const DeleteTimeSlot({
    Key key,
    @required this.range,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Align(
        alignment: Alignment.topRight,
        child: IconButton(
          onPressed: () {
            /** DELETE ITEM FROM LIST */
            var slotInfo = Provider.of<SlotInfo>(context, listen: false);
            final List<TimeRangeResult> newSlots = slotInfo.slots;
            newSlots.removeWhere(
                (slot) => "${slot.start.hhmm()} - ${slot.end.hhmm()}" == range);
            slotInfo.edit = newSlots;
          },
          icon: Icon(Icons.close),
          color: Colors.white,
          iconSize: 20,
        ),
      ),
      Text(range,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Martel Sans',
              fontSize: 14,
              fontWeight: FontWeight.w800)),
    ]);
  }
}
