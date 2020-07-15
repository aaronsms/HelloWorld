import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_picker.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

class ShowTimePicker extends StatefulWidget {
  @override
  _ShowTimePickerState createState() => _ShowTimePickerState();
}

class _ShowTimePickerState extends State<ShowTimePicker> {
  @override
  Widget build(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
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
                        String stringifiedSlot =
                            "${slotInfo.slot.start.hhmm()} - ${slotInfo.slot.end.hhmm()}";
                        List<String> newSlots = slotInfo.slots;
                        newSlots.add(stringifiedSlot);
                        slotInfo.edit = newSlots;
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
}
