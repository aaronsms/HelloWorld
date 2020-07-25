import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

class ConfirmationCard extends StatelessWidget {
  final String date;

  const ConfirmationCard({Key key, @required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final slotInfo = Provider.of<SlotInfo>(context);
    final List<TimeRangeResult> selected = slotInfo.selected;
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Palette.primaryColor,
        child: ListTile(
          title: Center(
              child: Text(date,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Martel Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700))),
          subtitle: Center(
              child: Column(
            children: selected
                .map((selection) => Text(
                    "${selection.start.hhmm()} - ${selection.end.hhmm()}",
                    style: TextStyle(
                        fontFamily: 'Martel Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16)))
                .toList(),
          )),
        ));
  }
}
