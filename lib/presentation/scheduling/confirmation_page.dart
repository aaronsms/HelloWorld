import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/confirmation_card.dart';
import 'package:helloworld/presentation/scheduling/confirmed_page.dart';
import 'package:helloworld/presentation/scheduling/schedule_page.dart';
import 'package:helloworld/presentation/scheduling/widgets/slot_info.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

class ConfirmationPage extends StatelessWidget {
  final DateTime date;

  const ConfirmationPage({Key key, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var slotInfo = Provider.of<SlotInfo>(context);
    List<TimeRangeResult> selected = slotInfo.selected;
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              Container(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    onPressed: () {
                      selected.clear();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SchedulePage()),
                      );
                    },
                    color: Palette.primaryColor,
                  )),
              const Image(
                  image: AssetImage('assets/images/booking_confirmation.png'),
                  height: 280),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("You're requesting to book...",
                      style: TextStyle(
                          color: Palette.primaryColor,
                          fontFamily: 'Martel Sans',
                          fontWeight: FontWeight.w900,
                          fontSize: 16))),
              ConfirmationCard(date: DateFormat.yMMMd().format(date)),
              Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: RaisedButton(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    color: Palette.primaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmedPage(date: date)),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text('Submit Request',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Martel Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w900)),
                  )),
            ])));
  }
}
