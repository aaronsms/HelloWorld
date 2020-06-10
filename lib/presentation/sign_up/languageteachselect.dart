import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:dropdownfield/dropdownfield.dart';

class LanguageTeachSelect extends StatefulWidget {
  @override
  _LanguageTeachSelectState createState() => _LanguageTeachSelectState();
}

class _LanguageTeachSelectState extends State<LanguageTeachSelect> {
  String selectLanguage = "";
  String selectProficiency;
  final _rates = TextEditingController();
  bool _validateRates = false;

  List<String> languages = [
    "Please type in a language",
    "Arabic",
    "Bengali",
    "Brahui",
    "Cantonese",
    "Danish",
    "Dutch",
    "English",
    "Hebrew",
    "Indonesian (Bahasa Indonesia)",
    "Italian",
    "Japanese",
    "Mandarin (Chinese)",
  ];

  List<String> proficiency = [
    "A1: Beginner",
    "A2: Elementary",
    "B3: Intermediate",
    "B4: Upper Intermediate",
    "C5: Advanced",
    "C6: Proficient"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250.0,
        width: 400.0,
        child: Wrap(
          children: <Widget>[
            Flexible(
                child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: DropDownField(
                        value: selectLanguage,
                        controller: TextEditingController(),
                        hintText: "Language",
                        hintStyle: TextStyle(fontSize: 16.0),
                        itemsVisibleInDropdown: 1,
                        items: languages,
                        setter: (dynamic value) {
                          selectLanguage = value;
                        }))),
            Flexible(
                child: Container(
                    height: 48,
                    padding: EdgeInsets.only(left: 10.0),
                    child: Theme(
                        data: Theme.of(context).copyWith(
                          canvasColor: Color(0xFFF5F5F5),
                        ),
                        child: Row(children: <Widget>[
                          DropdownButtonHideUnderline(
                              child: Container(
                                  padding: EdgeInsets.only(
                                      top: 3, bottom: 3, left: 12, right: 4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.0),
                                    color: Colors.grey.withOpacity(0.1),
                                  ),
                                  child: DropdownButton(
                                      hint: Text('Proficiency Level',
                                          style: TextStyle(
                                              color: Palette.primaryColor)),
                                      value: selectProficiency,
                                      style: TextStyle(
                                          color: Palette.primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15.0),
                                      items: proficiency.map((level) {
                                        return DropdownMenuItem(
                                            child: Text(level), value: level);
                                      }).toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectProficiency = value;
                                        });
                                      }))),
                        ])))),
            Container(
                padding: EdgeInsets.all(10.0),
                width: 220.0,
                child: TextFormField(
                  cursorColor: Palette.primaryColor,
                  controller: _rates,
                  style: TextStyle(color: Palette.primaryColor),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.attach_money,
                      color: Palette.primaryColor,
                    ),
                    errorText: _validateRates ? 'Field cannot be empty!' : null,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Palette.primaryColor,
                            style: BorderStyle.solid,
                            width: 2)),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: _validateRates
                              ? Colors.red
                              : Colors.grey.withOpacity(0.7),
                          style: BorderStyle.solid,
                          width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(15.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "Hourly Rate (SGD)",
                    labelStyle: TextStyle(
                        color: Palette.primaryColor,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ));
  }
}
