import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:intl/intl.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_display.dart';
import 'package:helloworld/presentation/scheduling/widgets/legend_view.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_picker.dart';

class SchedulePage extends StatefulWidget {
  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020, 1),
        lastDate: DateTime(2101),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light(primary: Palette.secondaryColor),
              buttonTheme:
                  const ButtonThemeData(textTheme: ButtonTextTheme.primary),
            ),
            child: child,
          );
        });
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        /** GENERATE TIME SLOTS PAGE HERE */
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    onPressed: () {
                      /** NAVIGATES TO HOMEPAGE */
                    },
                    color: Palette.primaryColor,
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Schedule",
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontFamily: 'Martel Sans',
                        fontSize: 26,
                        fontWeight: FontWeight.w900),
                  )),
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      width: 300,
                      child: TextField(
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          enabled: false,
                          readOnly: true,
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                width: 3,
                                color: Palette.secondaryColor,
                              ),
                            ),
                            alignLabelWithHint: true,
                            hintStyle: TextStyle(
                                color: Palette.secondaryColor,
                                fontFamily: 'Martel Sans',
                                fontWeight: FontWeight.w800,
                                fontSize: 20),
                            hintText: DateFormat.yMMMMd().format(selectedDate),
                            prefixIcon: Icon(
                              Icons.calendar_today,
                              color: Palette.secondaryColor,
                            ),
                          ))),
                  InkWell(
                      onTap: () => _selectDate(context),
                      child: Text(
                        "Select Date",
                        style: TextStyle(
                            height: 1,
                            decoration: TextDecoration.underline,
                            fontFamily: 'Martel Sans',
                            color: Palette.secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w900),
                      )),
                  LegendView(),
                  const Expanded(
                      child: SlotDisplay(
                    slots: [
                      ["08:00 - 09:00", "AVAILABLE"],
                      ["10:00 - 10:30", "AVAILABLE"],
                      ["11:00 - 11:30", "PENDING"],
                      ["12:30 - 13:30", "AVAILABLE"],
                      ["14:00 - 14:30", "PENDING"],
                      ["15:00 - 16:30", "UNAVAILABLE"],
                      ["17:00 - 18:30", "AVAILABLE"],
                    ],
                  )),
                  RaisedButton(
                    color: Palette.primaryColor,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: const Text('Book Slots',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Martel Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w900)),
                  ),
                ],
              )),
            ]));
  }
}
