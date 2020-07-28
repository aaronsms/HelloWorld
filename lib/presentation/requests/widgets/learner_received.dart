import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/requests/widgets/learner_received_preview.dart';
import 'package:helloworld/presentation/requests/widgets/slots.dart';

class LearnerReceived extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 500,
        child: SingleChildScrollView(
            child: Card(
          elevation: 0,
          color: Palette.backgroundColor,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const LearnerReceivedPreview(
                name: "John Doe",
                userId: '4dc414c0-cff3-11ea-9e8a-9fa3bac937ce',
                booked: [
                  Slots(slot: "Tue, 1 Aug 15:00 - 15:30"),
                ],
              ),
            ],
          ),
        )));
  }
}
