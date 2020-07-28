import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_picker.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

class AddTimeSlot extends StatefulWidget {
  final String range;

  const AddTimeSlot({
    Key key,
    @required this.range,
  }) : super(key: key);

  @override
  _AddTimeSlotState createState() => _AddTimeSlotState();
}

class _AddTimeSlotState extends State<AddTimeSlot> {
  /// Returns true if firstTiming is before secondTiming */
  bool isBefore(TimeOfDay firstTiming, TimeOfDay secondTiming) {
    return firstTiming.hour < secondTiming.hour ||
        (firstTiming.hour == secondTiming.hour &&
            firstTiming.minute < secondTiming.minute);
  }

  bool isEqual(TimeOfDay firstTiming, TimeOfDay secondTiming) {
    return firstTiming.hour == secondTiming.hour &&
        firstTiming.minute == secondTiming.minute;
  }

  void _showTimePicker(BuildContext context) {
    showDialog(
        context: context,
        builder: (cont) {
          var slotInfo = Provider.of<SlotInfo>(context);
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            backgroundColor: Palette.quaternaryColor,
            content: SizedBox(
                height: 180,
                child: ChangeNotifierProvider.value(
                  value: slotInfo,
                  child: SlotPicker(),
                )),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      color: Palette.secondaryColor,
                      onPressed: () {
                        /** DO NOTHING */
                        Navigator.pop(cont);
                      },
                      child: const Text("CANCEL",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Martel Sans',
                              fontWeight: FontWeight.w800))),
                  RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      color: Palette.secondaryColor,
                      onPressed: () {
                        /** ADD TO LIST */
                        final TimeRangeResult addSlot = slotInfo.slot;
                        final List<TimeRangeResult> newSlots = slotInfo.slots;
                        final int length = slotInfo.slots.length;
                        int counter = 0;
                        for (int index = 0; index < length; index++) {
                          final TimeRangeResult existingSlot =
                              slotInfo.slots[index];
                          if (isBefore(addSlot.start, existingSlot.start) &&
                              isBefore(addSlot.end, existingSlot.start)) {
                            counter++;
                          } else if (isBefore(
                              existingSlot.end, addSlot.start)) {
                            counter++;
                          }
                        }

                        if (counter == length) {
                          newSlots.add(addSlot);
                        }

                        slotInfo.edit = newSlots;
                        Navigator.pop(cont);
                      },
                      child: const Text("ADD",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Martel Sans',
                              fontWeight: FontWeight.w800))),
                ],
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
            onTap: () {
              /** POP-UP TIME PICKER */
              _showTimePicker(context);
            },
            child: Text(widget.range,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Martel Sans',
                    fontSize: 30,
                    fontWeight: FontWeight.w600))));
  }
}
