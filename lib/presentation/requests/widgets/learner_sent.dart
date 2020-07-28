import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/requests/widgets/learner_sent_preview.dart';
import 'package:helloworld/presentation/requests/widgets/slots.dart';
import 'package:helloworld/presentation/requests/widgets/learner_status.dart';

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
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const LearnerSentPreview(
                name: "Aaron Saw",
                userId: '8828b240-cfff-11ea-ec27-890a702fa47f',
                booked: [
                  Slots(slot: "Tue, 4 Aug 08:00 - 08:30"),
                  Slots(slot: "Wed, 5 Aug 08:00 - 08:30")
                ],
                status: LearnerStatus(status: "PENDING"),
              ),
              const LearnerSentPreview(
                name: "Amanda Soo",
                userId: 'aa88e5d0-cfff-11ea-b920-f368f2c88e7c',
                booked: [
                  Slots(slot: "Tue, 4 Aug 15:00 - 15:30"),
                ],
                status: LearnerStatus(status: "ACCEPTED"),
              ),
              const LearnerSentPreview(
                name: "Sally Lee",
                userId: 'cb5a6310-cfff-11ea-b755-07ecf03f1001',
                booked: [
                  Slots(slot: "Tue, 4 Aug 10:00 - 10:30"),
                  Slots(slot: "Thur, 6 Aug 13:00 - 13:30"),
                  Slots(slot: "Sat, 9 Aug 08:00 - 08:30")
                ],
                status: LearnerStatus(status: "REJECTED"),
              ),
            ],
          ),
        )));
  }
}
