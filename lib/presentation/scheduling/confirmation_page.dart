import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/confirmation_card.dart';
import 'package:helloworld/presentation/scheduling/confirmed_page.dart';

class ConfirmationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      /** NAVIGATES TO SCHEDULE PAGE */
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
              const ConfirmationCard(
                  /** NEEDS TO FETCH DATE AND SLOTS FROM SCHEDULE PAGE */
                  date: "Tuesday, 2 May 2020",
                  slots: ["08:00 - 08:30", "09:00 - 09:30", "14:00 - 15:00"]),
              Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: RaisedButton(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    color: Palette.primaryColor,
                    onPressed: () {
                      /** NAVIGATES TO CONFIRMED PAGE */
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmedPage()),
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
