import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class DistanceFilter extends StatefulWidget {
  @override
  _DistanceFilterState createState() => _DistanceFilterState();
}

class _DistanceFilterState extends State<DistanceFilter> {
  TextEditingController _distance;

  @override
  void initState() {
    super.initState();
    _distance = TextEditingController(text: "0.0");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15, top: 15),
        child: SizedBox(
            width: 200,
            height: 50,
            child: TextFormField(
              style: TextStyle(
                  color: Palette.secondaryColor,
                  fontFamily: 'Martel Sans',
                  fontWeight: FontWeight.w800),
              controller: _distance,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
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
                  prefixText: "< ",
                  prefixStyle: TextStyle(
                      color: Palette.secondaryColor,
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w900),
                  suffixText: "KM",
                  suffixStyle: TextStyle(
                      color: Palette.secondaryColor,
                      fontFamily: 'Martel Sans',
                      fontWeight: FontWeight.w900)),
            )));
  }
}
