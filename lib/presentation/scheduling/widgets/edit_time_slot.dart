import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/add_time_slot.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_picker.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

class EditTimeSlot extends StatefulWidget {
  final String range;
  const EditTimeSlot({
    Key key,
    @required this.range,
  }) : super(key: key);

  @override
  _EditTimeSlotState createState() => _EditTimeSlotState();
}

class _EditTimeSlotState extends State<EditTimeSlot> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: widget.range == "+"
          ? Palette.quaternaryColor
          : Palette.secondaryColor,
      child: widget.range == "+"
          ? AddTimeSlot(range: widget.range)
          : Column(children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    /** DELETE ITEM FROM LIST */
                    var slotInfo =
                        Provider.of<SlotInfo>(context, listen: false);
                    final List<String> newSlots = slotInfo.slots;
                    slotInfo.slots.removeWhere((slot) => slot == widget.range);
                    slotInfo.edit = newSlots;
                  },
                  icon: Icon(Icons.close),
                  color: Colors.white,
                  iconSize: 20,
                ),
              ),
              Text(widget.range,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Martel Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.w800)),
            ]),
    );
  }
}
