import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/proficiency_bar.dart';

class LearnerDisplay extends StatefulWidget {
  @override
  _LearnerDisplayState createState() => _LearnerDisplayState();
}

class _LearnerDisplayState extends State<LearnerDisplay> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
              onTap: () {/** NAVIGATES TO USER'S PROFILE */},
              leading: Container(
                width: 50,
                height: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Palette.primaryColor,
                    width: 3.0,
                  ),
                ),
              ),
              title: Text('Sample Name',
                  style: TextStyle(
                      color: Palette.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Martel Sans')),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Active 5 days ago',
                        style: TextStyle(
                            height: 1.2,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Martel Sans')),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Palette.primaryColor,
                        ),
                        Text("0.6km from your preferred location",
                            style: TextStyle(
                                color: Palette.primaryColor,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Martel Sans'))
                      ],
                    ),
                    Row(children: <Widget>[
                      RichText(
                        text: TextSpan(
                            text: 'LEARNING',
                            style: TextStyle(
                                color: Palette.secondaryColor,
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  Spanish',
                                  style: TextStyle(
                                    color: Palette.primaryColor,
                                    fontWeight: FontWeight.w800,
                                  )),
                            ]),
                      ),
                      ProficiencyBar(),
                    ]),
                    Row(children: <Widget>[
                      RichText(
                        text: TextSpan(
                            text: 'ALSO SPEAKS',
                            style: TextStyle(
                                color: Palette.secondaryColor,
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  English',
                                  style: TextStyle(
                                    color: Palette.primaryColor,
                                    fontWeight: FontWeight.w800,
                                  )),
                            ]),
                      ),
                      ProficiencyBar(),
                    ]),
                    Row(children: <Widget>[
                      RichText(
                          text: TextSpan(
                        text: 'Mandarin (Chinese)',
                        style: TextStyle(
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.w600),
                      )),
                      ProficiencyBar(),
                    ]),
                  ])),
          Container(
              padding: EdgeInsets.only(left: 260),
              child: RaisedButton(
                color: Palette.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                onPressed: () {},
                child: Text(
                  'View Profile',
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ]));
  }
}
