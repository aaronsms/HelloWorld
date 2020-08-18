import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:helloworld/presentation/core/palette.dart';

class QualificationAddition extends StatefulWidget {
  @override
  _QualificationAdditionState createState() => _QualificationAdditionState();
}

class _QualificationAdditionState extends State<QualificationAddition> {
  final _qualification = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
            child: DecoratedBox(
                decoration: BoxDecoration(color: Palette.tertiaryColor),
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(bottom: 15.0),
                        child: Theme(
                            data: ThemeData(
                              primaryColor: Palette.primaryColor,
                            ),
                            child: TextFormField(
                              cursorColor: Palette.primaryColor,
                              maxLines: null,
                              controller: _qualification,
                              style: TextStyle(color: Palette.primaryColor),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                      const Radius.circular(15.0)),
                                  borderSide: BorderSide(
                                      color: Palette.primaryColor,
                                      style: BorderStyle.solid,
                                      width: 2),
                                ),
                                border: new OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(15.0),
                                  ),
                                ),
                                contentPadding: EdgeInsets.all(10.0),
                                labelText: "Input a qualification",
                                labelStyle: TextStyle(
                                    color: Palette.primaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))),
                    Container(
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          onPressed: () async {
                            await FilePicker.getFilePath();
                          },                                                                                  
                          color: Palette.secondaryColor,
                          child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text("Submit File ",
                                    style: TextStyle(color: Colors.white)),
                                Icon(
                                  Icons.file_upload,
                                  color: Colors.white,
                                )
                              ])),
                    ),
                  ],
                ))));
  }
}
