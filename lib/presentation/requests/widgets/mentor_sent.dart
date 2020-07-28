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
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const MentorSentPreview(
                  name: "Santiago...",
//                  userId: 'ea9a2850-cff5-11ea-9cf2-ed0c34e38365',
                  booked: [
                    Slots(slot: "Tue, 4 Aug 08:00 - 08:30"),
                    Slots(slot: "Wed, 5 Aug 08:00 - 08:30")
                  ],
                  status: MentorStatus(status: "PENDING"),
                  cost: 10.0),
              const MentorSentPreview(
                  name: "Park Jim...",
//                  userId: '6179c990-cff5-11ea-973a-4b2a489c8095',
                  booked: [
                    Slots(slot: "Tue, 4 Aug 09:00 - 09:30"),
                    Slots(slot: "Thur, 6 Aug 08:00 - 08:30")
                  ],
                  status: MentorStatus(status: "ACCEPTED"),
                  cost: 8.00),
            ],
          ),
        )));
  }
}
