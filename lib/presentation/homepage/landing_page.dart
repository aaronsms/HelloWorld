import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/learner_display_view.dart';
import 'package:helloworld/presentation/homepage/widgets/navigation_bar.dart';
// import 'package:helloworld/presentation/homepage/widgets/view_by.dart';
import 'package:helloworld/presentation/homepage/widgets/search_bar.dart';
import 'package:helloworld/presentation/homepage/widgets/mentor_display_view.dart';
import 'package:helloworld/presentation/homepage/widgets/menu.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String viewBy = "Learners";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        bottomNavigationBar: NavigationBar(),
        body: Wrap(children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Palette.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Palette.primaryColor,
                        ),
                        child: DropdownButton(
                          underline: SizedBox(),
                          value: viewBy,
                          items: <DropdownMenuItem<String>>[
                            DropdownMenuItem(
                                child: Text(
                                  'Learners',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Martel Sans',
                                      fontWeight: FontWeight.w700),
                                ),
                                value: 'Learners'),
                            DropdownMenuItem(
                                child: Text('Mentors',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Martel Sans',
                                        fontWeight: FontWeight.w700)),
                                value: 'Mentors')
                          ],
                          onChanged: (String value) {
                            setState(() {
                              viewBy = value;
                            });
                          },
                        )),
                  )
                ],
              ),
            ),
            Menu()
          ]),
          Center(child: SearchBar()),
          Container(
              padding: EdgeInsets.only(top: 20),
              child: viewBy == "Learners"
                  ? LearnerDisplayView()
                  : MentorDisplayView())
        ]));
  }
}
