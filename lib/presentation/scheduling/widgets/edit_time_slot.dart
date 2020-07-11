import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_picker.dart';

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
  // bool isDeleted = false;
  void _showTimePicker() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
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
                      onPressed: () {},
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
                      onPressed: () {},
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
    return Card(
      color: widget.range == "+"
          ? Palette.quaternaryColor
          : Palette.secondaryColor,
      child: widget.range == "+"
          ? Center(
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
                          fontWeight: FontWeight.w600))))
          : Column(children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                    /** DELETE SLOT */
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
