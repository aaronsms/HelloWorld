import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class LocationPreferred extends StatefulWidget {
  @override
  _LocationPreferredState createState() => _LocationPreferredState();
}

class _LocationPreferredState extends State<LocationPreferred> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Palette.secondaryColor,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.location_city,
              color: Palette.primaryColor,
            ),
            title: Text('Woodlands Regional Library',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Martel Sans')),
            subtitle: Text(
                '900 South Woodlands Drive, Woodlands Civic Centre, #01-03, Singapore 730900',
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Martel Sans')),
          ),
        ]));
  }
}
