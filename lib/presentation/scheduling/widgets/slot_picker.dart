import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:time_range/time_range.dart';

class SlotPicker extends StatefulWidget {
  @override
  _SlotPickerState createState() => _SlotPickerState();
}

/** RESOLVE ERROR WHEN "TO" TIME IS PICKED FIRST */
/** ADJUST POSITIONING */

class _SlotPickerState extends State<SlotPicker> {
  TimeRangeResult _timeRange;

  @override
  Widget build(BuildContext context) {
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
            initialRange: _timeRange,
            timeStep: 30,
            timeBlock: 30,
            onRangeCompleted: (range) => setState(() => _timeRange = range),
          ),
          // const SizedBox(height: 30),
          // if (_timeRange != null)
          //   Padding(
          //     padding: const EdgeInsets.only(top: 9),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: <Widget>[
          //         Text(
          //           "You've selected: \n    ${_timeRange.start.hhmm()} - ${_timeRange.end.hhmm()}",
          //           style: const TextStyle(
          //             fontSize: 16,
          //             color: Colors.white,
          //             fontFamily: 'Martel Sans',
          //             fontWeight: FontWeight.w800,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
        ],
      ),
    );
  }
}
