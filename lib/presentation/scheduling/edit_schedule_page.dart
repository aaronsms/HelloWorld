import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:intl/intl.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_picker.dart';
import 'package:helloworld/presentation/scheduling/widgets/edit_time_slot_display.dart';

class EditSchedulePage extends StatefulWidget {
  @override
  _EditSchedulePageState createState() => _EditSchedulePageState();
}

class _EditSchedulePageState extends State<EditSchedulePage> {
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
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Edit Schedule",
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontFamily: 'Martel Sans',
                        fontSize: 26,
                        fontWeight: FontWeight.w900),
                  )),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      width: 300,
                      child: TextField(
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          enabled: false,
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
                ],
              ),
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
              const Expanded(
                  child: EditTimeSlotDisplay(slots: [
                "08:00 - 09:00",
                "09:00 - 09:30",
                "10:00 - 11:00",
                "13:00 - 14:00",
                "14:00 - 14:30",
                "20:00 - 20:30",
                "20:30 - 21:00",
                "21:00 - 21:30",
                "+"
              ]))
            ]));
  }
}
