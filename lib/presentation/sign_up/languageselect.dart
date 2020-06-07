import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:dropdownfield/dropdownfield.dart';

class LanguageSelect extends StatefulWidget {
  @override
  _LanguageSelectState createState() => _LanguageSelectState();
}

class _LanguageSelectState extends State<LanguageSelect> {
  String selectLanguage = "";
  String selectProficiency;

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
          ],
        ));
  }
}
