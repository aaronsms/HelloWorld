import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:dropdownfield/dropdownfield.dart';

class LocationSelect extends StatefulWidget {
  @override
  _LocationSelectState createState() => _LocationSelectState();
}

class _LocationSelectState extends State<LocationSelect> {
  String selectLocation = "";

  List<String> locations = [
    "Please type in a location",
    "Woodlands Regional Library"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300.0,
        width: 400.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: DropDownField(
                        value: selectLocation,
                        controller: TextEditingController(),
                        hintText: "Preferred Location",
                        hintStyle: TextStyle(fontSize: 16.0),
                        itemsVisibleInDropdown: 1,
                        items: locations,
                        setter: (dynamic value) {
                          selectLocation = value;
                        }))),
            Flexible(
                child: Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Color(0xFFF5F5F5),
                        ),
                        child: Container(
                            child: RaisedButton(
                          color: Palette.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          onPressed: () {},
                          child: Text('Add',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Gill Sans',
                                  fontWeight: FontWeight.bold)),
                        ))))),
          ],
        ));
  }
}
