import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class ViewBy extends StatefulWidget {
  @override
  _ViewByState createState() => _ViewByState();
}

class _ViewByState extends State<ViewBy> {
  static String viewBy = 'Learners';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Palette.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: Palette.primaryColor,
              ),
              child: DropdownButton(
                underline: SizedBox(),
                value: viewBy,
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
                      child: Text(
                        'Learners',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Martel Sans',
                            fontWeight: FontWeight.w700),
                      ),
                      value: 'Learners'),
                  DropdownMenuItem(
                      child: Text('Mentors',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Martel Sans',
                              fontWeight: FontWeight.w700)),
                      value: 'Mentors')
                ],
                onChanged: (String value) {
                  setState(() {
                    viewBy = value;
                  });
                },
              )),
        )
      ],
    );
  }
}
