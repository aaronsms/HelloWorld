import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/scheduling/widgets/confirmation_card.dart';

class ConfirmedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Request sent.",
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontFamily: 'Martel Sans',
                        fontSize: 26,
                        fontWeight: FontWeight.w900),
                  )),
              const Image(
                image: AssetImage('assets/images/booking_done.png'),
                height: 280,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 10, top: 25),
                  child: Text("You've requested to book...",
                      style: TextStyle(
                          color: Palette.primaryColor,
                          fontFamily: 'Martel Sans',
                          fontWeight: FontWeight.w900,
                          fontSize: 16))),
              /** DATE NOT DONE */
              const ConfirmationCard(
                date: "Tuesday, 2 May 2020",
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: RichText(
                      text: TextSpan(
                          text: "Note:",
                          style: TextStyle(
                              height: 1.3,
                              fontSize: 12,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Martel Sans'),
                          children: <TextSpan>[
                        TextSpan(
                            text:
                                " The requested timing will be blocked out from your schedule, unless your request is rejected. Do note that if you have requested for a timing with pending requests, there will be a high chance that you may not get your desired slot. If user has not responded and you wish to cancel request, you may do it under “Requests”.",
                            style: TextStyle(
                                height: 1.3,
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Martel Sans'))
                      ]))),
              Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: RaisedButton(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    color: Palette.primaryColor,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text('Return to Home',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Martel Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w900)),
                  )),
            ])));
  }
}
