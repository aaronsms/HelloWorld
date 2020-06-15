import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/learner_display_view.dart';
import 'package:helloworld/presentation/homepage/widgets/navigation_bar.dart';
import 'package:helloworld/presentation/homepage/widgets/view_by.dart';
import 'package:helloworld/presentation/homepage/widgets/search_bar.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        bottomNavigationBar: NavigationBar(),
        body: Wrap(children: <Widget>[
          Container(
              padding: EdgeInsets.only(right: 10, top: 10), child: ViewBy()),
          Center(child: SearchBar()),
          Container(
              padding: EdgeInsets.only(top: 20), child: LearnerDisplayView())
        ]));
  }
}
