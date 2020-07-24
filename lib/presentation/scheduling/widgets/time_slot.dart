import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

class TimeSlot extends StatefulWidget {
  final TimeRangeResult range;
  final String status;
  const TimeSlot({
    Key key,
    @required this.range,
    @required this.status,
  }) : super(key: key);

  @override
  _TimeSlotState createState() => _TimeSlotState();
}

class _TimeSlotState extends State<TimeSlot> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    var slotInfo = Provider.of<SlotInfo>(context);
    return ButtonTheme(
        minWidth: 200.0,
        child: RaisedButton(
            onPressed: widget.status == "UNAVAILABLE"
                ? null
                : () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                    if (isSelected) {
                      slotInfo.select = widget.range;
                    } else {
                      slotInfo.deselect = widget.range;
                    }
                  },
            disabledColor: Colors.grey,
            color: isSelected
                ? Palette.primaryColor
                : widget.status == "AVAILABLE"
                    ? const Color(0xFF3AD29F)
                    : Colors.blue,
            child: Text(
                "${widget.range.start.hhmm()} - ${widget.range.end.hhmm()}",
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Martel Sans',
                    fontSize: 14,
                    fontWeight: FontWeight.w800))));
  }
}
