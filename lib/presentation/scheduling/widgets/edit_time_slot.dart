import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/add_time_slot.dart';
import 'package:helloworld/presentation/scheduling/widgets/delete_time_slot.dart';

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
            : DeleteTimeSlot(range: widget.range));
  }
}
