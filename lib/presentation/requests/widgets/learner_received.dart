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
            children: <Widget>[
              const LearnerReceivedPreview(
                name: "Sample Name 1",
                booked: [
                  Slots(slot: "Tue, 4 May 08:00 - 08:30"),
                  Slots(slot: "Wed, 5 May 08:00 - 08:30")
                ],
              ),
            ],
          ),
        )));
  }
}
