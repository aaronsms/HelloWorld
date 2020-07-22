import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/requests/widgets/mentor_sent_preview.dart';
import 'package:helloworld/presentation/requests/widgets/slots.dart';
import 'package:helloworld/presentation/requests/widgets/mentor_status.dart';

class MentorSent extends StatelessWidget {
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
              const MentorSentPreview(
                  name: "Sample Name 1",
                  booked: [
                    Slots(slot: "Tue, 4 May 08:00 - 08:30"),
                    Slots(slot: "Wed, 5 May 08:00 - 08:30")
                  ],
                  status: MentorStatus(status: "PENDING"),
                  cost: 10.0),
              const MentorSentPreview(
                  name: "Sample Name 2",
                  booked: [
                    Slots(slot: "Tue, 4 May 09:00 - 09:30"),
                    Slots(slot: "Thur, 6 May 08:00 - 08:30")
                  ],
                  status: MentorStatus(status: "ACCEPTED"),
                  cost: 8.00),
              const MentorSentPreview(
                  name: "Sample Name 2",
                  booked: [
                    Slots(slot: "Tue, 4 May 10:00 - 10:30"),
                    Slots(slot: "Thur, 6 May 13:00 - 13:30"),
                    Slots(slot: "Sat, 9 May 08:00 - 08:30")
                  ],
                  status: MentorStatus(status: "REJECTED"),
                  cost: 9.00),
            ],
          ),
        )));
  }
}
