import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Qualification extends StatefulWidget {
  @override
  _QualificationState createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Palette.secondaryColor,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.school,
              color: Palette.primaryColor,
            ),
            trailing: Icon(
              Icons.delete_sweep,
              color: Color(0xFFF1FAEE),
              /** ONTAP DELETE */
            ),
            title: Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('Attained Grade "A" in GCSE O-Level Spanish',
                    style: TextStyle(
                        height: 1.4,
                        color: Palette.primaryColor,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Martel Sans'))),
            subtitle: Text('certificate_example.pdf',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Martel Sans')),
          ),
        ]));
  }
}
