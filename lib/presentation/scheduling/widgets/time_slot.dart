import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class TimeSlot extends StatefulWidget {
  final String range;
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
    return ButtonTheme(
        minWidth: 200.0,
        child: RaisedButton(
            onPressed: widget.status == "UNAVAILABLE"
                ? null
                : () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
            disabledColor: Colors.grey,
            color: isSelected
                ? Palette.primaryColor
                : widget.status == "AVAILABLE"
                    ? const Color(0xFF3AD29F)
                    : Colors.blue,
            child: Text(widget.range,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Martel Sans',
                    fontSize: 14,
                    fontWeight: FontWeight.w800))));
  }
}
