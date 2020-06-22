import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String _menu;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      color: Palette.primaryColor,
      onSelected: (String result) {
        setState(() {
          _menu = result;
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: "Settings",
          child: Text("Settings",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Martel Sans',
                  fontWeight: FontWeight.w800)),
        ),
        const PopupMenuItem<String>(
          value: "Sign Out",
          child: Text("Sign Out",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Martel Sans',
                  fontWeight: FontWeight.w800)),
        ),
        const PopupMenuItem<String>(
          value: "Report Abuse",
          child: Text("Report Abuse",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Martel Sans',
                  fontWeight: FontWeight.w800)),
        ),
      ],
    );
  }
}
