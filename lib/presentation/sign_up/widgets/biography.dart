import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Biography extends StatefulWidget {
  @override
  _BiographyState createState() => _BiographyState();
}

class _BiographyState extends State<Biography> {
  final _bio = TextEditingController();

  @override
  void dispose() {
    _bio.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.0),
        child: Theme(
            data: ThemeData(
              primaryColor: Palette.tertiaryColor,
            ),
            child: TextFormField(
              controller: _bio,
              style: TextStyle(
                  color: Palette.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Martel Sans'),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(8.0)),
                  borderSide: BorderSide(
                      color: Palette.tertiaryColor,
                      style: BorderStyle.solid,
                      width: 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
                filled: true,
                fillColor: Palette.tertiaryColor,
                contentPadding: EdgeInsets.only(left: 10),
                hintText: "Bio (Optional)",
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700),
              ),
            )));
  }
}
