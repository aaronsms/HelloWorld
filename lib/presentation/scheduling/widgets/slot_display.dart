import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/time_slot.dart';

class SlotDisplay extends StatelessWidget {
  final List<List<String>>
      slots; //[["08:00 - 09:00", "STATUS"], "09:00 - 09:30"]
  const SlotDisplay({
    Key key,
    @required this.slots,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Expanded(
          child: Card(
              elevation: 0,
              color: Palette.backgroundColor,
              child: GridView.count(
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
                  crossAxisCount: 4,
                  children: List.generate(slots.length, (index) {
                    return TimeSlot(
                        range: slots[index][0], status: slots[index][1]);
                  }))))
    ]);
  }
}
