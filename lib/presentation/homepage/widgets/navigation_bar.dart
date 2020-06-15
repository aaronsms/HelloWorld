import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Palette.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Padding(
                padding: EdgeInsets.all(5),
                child: IconButton(
                  icon: Icon(
                    Icons.calendar_today,
                    color: Palette.backgroundColor,
                    size: 35,
                  ),
                  onPressed: () {},
                )),
            Text("SCHEDULE",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Palette.backgroundColor,
                    fontFamily: 'Martel Sans'))
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Padding(
                padding: EdgeInsets.all(5),
                child: IconButton(
                  icon: Icon(
                    Icons.send,
                    color: Palette.backgroundColor,
                    size: 35,
                  ),
                  onPressed: () {},
                )),
            Text("MESSENGER",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Palette.backgroundColor,
                    fontFamily: 'Martel Sans'))
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Padding(
                padding: EdgeInsets.all(5),
                child: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Palette.backgroundColor,
                    size: 35,
                  ),
                  onPressed: () {},
                )),
            Text("MY PROFILE",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Palette.backgroundColor,
                    fontFamily: 'Martel Sans'))
          ]),
        ],
      ),
    );
  }
}
