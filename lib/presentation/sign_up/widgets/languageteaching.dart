import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class LanguageTeaching extends StatefulWidget {
  @override
  _LanguageTeachingState createState() => _LanguageTeachingState();
}

class _LanguageTeachingState extends State<LanguageTeaching> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Palette.secondaryColor,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
              leading: Icon(Icons.language, color: Palette.primaryColor),
              trailing: Icon(
                Icons.delete_sweep,
                color: Color(0xFFF1FAEE),
                /** ONTAP DELETE */
              ),
              title: Text('French',
                  style: TextStyle(
                      color: Palette.primaryColor,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Martel Sans')),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('C6: Proficient',
                      style: TextStyle(
                          color: Palette.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Martel Sans')),
                  Text("10 SGD/HOUR",
                      style: TextStyle(
                          color: Palette.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Martel Sans')),
                ],
              )),
          Divider(color: Colors.white),
          ListTile(
            leading: Icon(Icons.language, color: Palette.primaryColor),
            trailing: Icon(
              Icons.delete_sweep,
              color: Color(0xFFF1FAEE),
              /** ONTAP DELETE */
            ),
            title: Text('Japanese',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Martel Sans')),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('C6: Proficient',
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Martel Sans')),
                Text("15 SGD/HOUR",
                    style: TextStyle(
                        color: Palette.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Martel Sans')),
              ],
            ),
          ),
        ]));
  }
}
