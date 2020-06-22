import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Status extends StatelessWidget {
  final String status;

  const Status({
    Key key,
    @required this.status,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10),
        child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            onPressed: null,
            disabledColor: status == "PENDING"
                ? Palette.primaryColor
                : status == "ACCEPTED"
                    ? const Color(0xFF4DB97F)
                    : const Color(0xFFD06161),
            child: Text(status,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w900))));
  }
}
