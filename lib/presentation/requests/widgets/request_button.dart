import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class RequestButton extends StatefulWidget {
  @override
  _RequestButtonState createState() => _RequestButtonState();
}

class _RequestButtonState extends State<RequestButton> {
  String _outcome = "";

  void showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Palette.secondaryColor,
      content: Text(
          (_outcome == "ACCEPT")
              ? "You’ve accepted user’s request. The stated timing(s) will be blocked off from your schedule."
              : "You’ve rejected user’s request.",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Martel Sans',
              fontWeight: FontWeight.w800)),
      actions: [
        RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
              /** BLOCK TIMING IF ACCEPTED */
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            color: Colors.white,
            child: Text(
              "OK",
              style: TextStyle(
                  color: Palette.secondaryColor,
                  fontFamily: 'Martel Sans',
                  fontWeight: FontWeight.w900),
            ))
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      children: <Widget>[
        RaisedButton(
          color: _outcome == "ACCEPT" ? const Color(0xFF4DB97F) : Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(width: 2, color: Color(0xFF4DB97F))),
          onPressed: () {
            setState(() {
              _outcome = "ACCEPT";
            });
            showAlertDialog(context);
          },
          child: Text("ACCEPT",
              style: TextStyle(
                color: _outcome == "ACCEPT"
                    ? Colors.white
                    : const Color(0xFF4DB97F),
                fontFamily: 'Martel Sans',
                fontWeight: FontWeight.w900,
              )),
        ),
        RaisedButton(
          color: _outcome == "REJECT" ? const Color(0xFFD06161) : Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(width: 2, color: Color(0xFFD06161))),
          onPressed: () {
            setState(() {
              _outcome = "REJECT";
            });
            showAlertDialog(context);
          },
          child: Text("REJECT",
              style: TextStyle(
                color: _outcome == "REJECT"
                    ? Colors.white
                    : const Color(0xFFD06161),
                fontFamily: 'Martel Sans',
                fontWeight: FontWeight.w900,
              )),
        )
      ],
    );
  }
}
