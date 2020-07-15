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
  void _showTimePicker() {
    showDialog(
        context: context,
        builder: (context) {
          var slotInfo = Provider.of<SlotInfo>(context);
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            backgroundColor: Palette.quaternaryColor,
            content: SizedBox(height: 180, child: SlotPicker()),
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
                        Navigator.pop(context);
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
                        final String stringifiedSlot =
                            "${slotInfo.slot.start.hhmm()} - ${slotInfo.slot.end.hhmm()}";
                        final List<String> newSlots = slotInfo.slots;
                        if (!newSlots.contains(stringifiedSlot)) {
                          newSlots.removeWhere((slot) => slot == "+");
                          newSlots.add(stringifiedSlot);
                          newSlots.add("+");
                        }
                        slotInfo.edit = newSlots;
                        Navigator.pop(context);
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
              _showTimePicker();
            },
            child: Text(widget.range,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Martel Sans',
                    fontSize: 30,
                    fontWeight: FontWeight.w600))));
  }
}
