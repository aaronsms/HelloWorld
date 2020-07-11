import 'package:helloworld/presentation/core/palette.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/presentation/requests/widgets/learner_sent.dart';
import 'package:helloworld/presentation/requests/widgets/mentor_sent.dart';
import 'package:helloworld/presentation/requests/widgets/learner_received.dart';

class RequestPage extends StatefulWidget {
  @override
  _RequestPageState createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  bool _viewLearnerSent = true;
  bool _viewMentorSent = false;
  String _page = "Received";

  List<DropdownMenuItem<String>> dropdown = [
    DropdownMenuItem(
      value: 'Received',
      child: Text(
        'Received',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Martel Sans',
            fontWeight: FontWeight.w700),
      ),
    ),
    DropdownMenuItem(
      value: 'Sent',
      child: Text('Sent',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Martel Sans',
              fontWeight: FontWeight.w700)),
    )
  ];

  void _toggleOnLearners() {
    setState(() {
      _viewLearnerSent = true;
      _viewMentorSent = false;
    });
  }

  void _toggleOnMentors() {
    setState(() {
      _viewLearnerSent = false;
      _viewMentorSent = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  onPressed: () {
                    /** NAVIGATES TO HOMEPAGE */
                  },
                  color: Palette.primaryColor,
                )),
            Container(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Requests",
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontFamily: 'Martel Sans',
                        fontSize: 26,
                        fontWeight: FontWeight.w900),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              color: Palette.secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: DropdownButton(
                            iconEnabledColor: Colors.white,
                            dropdownColor: Palette.secondaryColor,
                            underline: const SizedBox(),
                            value: _page,
                            items: dropdown,
                            onChanged: (String value) {
                              setState(() {
                                _page = value;
                              });
                            },
                          )))
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _page == "Sent"
                    ? <Widget>[
                        GestureDetector(
                          onTap: _toggleOnLearners,
                          child: Text("Learners",
                              style: TextStyle(
                                  color: _viewLearnerSent
                                      ? Palette.primaryColor
                                      : Colors.grey,
                                  fontFamily: 'Martel Sans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900)),
                        ),
                        const Text("              "),
                        GestureDetector(
                          onTap: _toggleOnMentors,
                          child: Text("Mentors",
                              style: TextStyle(
                                  color: _viewMentorSent
                                      ? Palette.primaryColor
                                      : Colors.grey,
                                  fontFamily: 'Martel Sans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900)),
                        ),
                      ]
                    : <Widget>[
                        Text("Learners",
                            style: TextStyle(
                                color: Palette.primaryColor,
                                fontFamily: 'Martel Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w900))
                      ]),
            if (_page == "Received")
              LearnerReceived()
            else
              _viewLearnerSent ? LearnerSent() : MentorSent()
          ],
        ));
  }
}
