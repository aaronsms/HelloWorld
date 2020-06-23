import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/search_profile_filters.dart';
import 'package:helloworld/presentation/core/custom_dialog.dart'
    as customDialog;

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _search = TextEditingController();

  createFilterAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return SingleChildScrollView(
              child: customDialog.AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            backgroundColor: Palette.secondaryColor,
            title: Text(""),
            content: SearchProfileFilters(),
            contentPadding: EdgeInsets.all(0),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Text(
                      "APPLY",
                      style: TextStyle(
                          color: Palette.secondaryColor,
                          fontFamily: 'Martel Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                          color: Palette.secondaryColor,
                          fontFamily: 'Martel Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              )
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: SizedBox(
                width: 360,
                height: 50,
                child: TextFormField(
                  onTap: () {
                    createFilterAlertDialog(context);
                  },
                  style: TextStyle(
                      color: Palette.secondaryColor,
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w800),
                  controller: _search,
                  cursorColor: Palette.secondaryColor,
                  decoration: InputDecoration(
                      hintText:
                          "Input user's name or filter by user profile...",
                      hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Martel Sans',
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                      contentPadding: EdgeInsets.all(10),
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(15.0)),
                          borderSide: BorderSide(
                              color: Palette.secondaryColor, width: 2)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(15.0)),
                        borderSide: BorderSide(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(15.0),
                        ),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Palette.secondaryColor,
                      )),
                )))
      ],
    );
  }
}
