import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

class SlotPicker extends StatefulWidget {
  @override
  _SlotPickerState createState() => _SlotPickerState();
}

class _SlotPickerState extends State<SlotPicker> {
  TimeRangeResult timeRange;

  @override
  Widget build(BuildContext context) {
    var slotInfo = Provider.of<SlotInfo>(context);
    // print("${timeRange.end.hhmm()}");
    return Scaffold(
      backgroundColor: Palette.quaternaryColor,
      body: Column(
        children: <Widget>[
          TimeRange(
            fromTitle: Text(
              'FROM',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Martel Sans',
                fontWeight: FontWeight.w900,
              ),
            ),
            toTitle: Text(
              'TO',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Martel Sans',
                fontWeight: FontWeight.w900,
              ),
            ),
            textStyle: const TextStyle(
              color: Colors.white,
              fontFamily: 'Martel Sans',
              fontWeight: FontWeight.w800,
            ),
            activeTextStyle: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            borderColor: Palette.secondaryColor,
            activeBorderColor: Palette.primaryColor,
            backgroundColor: Palette.secondaryColor,
            activeBackgroundColor: Palette.primaryColor,
            firstTime: const TimeOfDay(hour: 8, minute: 00),
            lastTime: const TimeOfDay(hour: 22, minute: 00),
            initialRange: timeRange,
            timeStep: 30,
            timeBlock: 30,
            onRangeCompleted: (range) => setState(() => {
                  timeRange = range,
                  slotInfo.change = range
                  // if (timeRange != null)
                  //   slotInfo.change = "${timeRange.end.hhmm()}"
                }),
          ),
        ],
      ),
    );
  }
}
