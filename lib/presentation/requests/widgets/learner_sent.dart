import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/requests/widgets/learner_sent_preview.dart';
import 'package:helloworld/presentation/requests/widgets/slots.dart';
import 'package:helloworld/presentation/requests/widgets/status.dart';

class LearnerSent extends StatelessWidget {
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
              const LearnerSentPreview(
                name: "Sample Name 1",
                booked: [
                  Slots(slot: "Tue, 4 May 08:00 - 08:30"),
                  Slots(slot: "Wed, 5 May 08:00 - 08:30")
                ],
                status: Status(status: "PENDING"),
              ),
              const LearnerSentPreview(
                name: "Sample Name 2",
                booked: [
                  Slots(slot: "Tue, 4 May 09:00 - 09:30"),
                  Slots(slot: "Thur, 6 May 08:00 - 08:30")
                ],
                status: Status(status: "ACCEPTED"),
              ),
              const LearnerSentPreview(
                name: "Sample Name 2",
                booked: [
                  Slots(slot: "Tue, 4 May 10:00 - 10:30"),
                  Slots(slot: "Thur, 6 May 13:00 - 13:30"),
                  Slots(slot: "Sat, 9 May 08:00 - 08:30")
                ],
                status: Status(status: "REJECTED"),
              ),
            ],
          ),
        )));
  }
}
