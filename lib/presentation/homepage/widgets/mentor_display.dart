import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/language_set.dart';

class MentorDisplay extends StatelessWidget {
  final String name;
  final double rates;
  final int active;
  final Image display;
  final double distance;
  final List<LanguageSet> common;
  final List<LanguageSet> teaching;

  const MentorDisplay({
    Key key,
    @required this.name,
    @required this.rates,
    @required this.active,
    @required this.distance,
    @required this.common,
    @required this.teaching,
    this.display,
  }) : super(key: key);

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
              title: Text(name,
                  style: TextStyle(
                      color: Palette.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Martel Sans')),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Active ' + active.toString() + ' days ago',
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
                        Text(
                            distance.toString() +
                                "km from your preferred location",
                            style: TextStyle(
                                color: Palette.primaryColor,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Martel Sans'))
                      ],
                    ),
                    Row(children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'TEACHING',
                          style: TextStyle(
                              color: Palette.secondaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
                    Column(
                      children: teaching,
                    ),
                    Row(children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'ALSO SPEAKS',
                          style: TextStyle(
                              color: Palette.secondaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
                    Column(children: common),
                    Container(
                      child: RichText(
                          text: TextSpan(
                        text: 'RATES',
                        style: TextStyle(
                            color: Palette.secondaryColor,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                    Text('  ' + rates.toString() + 'SGD/HR',
                        style: TextStyle(
                          color: Palette.primaryColor,
                          fontWeight: FontWeight.w800,
                        )),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            color: Palette.secondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              'View Profile',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ])
                  ])),
        ]));
  }
}
