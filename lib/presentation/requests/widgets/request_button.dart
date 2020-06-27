import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class RequestButton extends StatefulWidget {
  @override
  _RequestButtonState createState() => _RequestButtonState();
}

class _RequestButtonState extends State<RequestButton> {
  String _outcome = "";
  bool bothAvailable = true;
  bool isDisabled = false;

  void showAlertDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      backgroundColor: Palette.secondaryColor,
      content: Text(
          (_outcome == "ACCEPT")
              ? "You’ve accepted user’s request. The stated timing(s) will be blocked off from your schedule."
              : _outcome == "REJECT"
                  ? "You’ve rejected user’s request."
                  : "The system has detected that one or more parties are unavailable at the stipulated time slot(s). Hence, this request cannot be accepted.",
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
              _outcome == "ACCEPT" || _outcome == "REJECT"
                  ? "OK"
                  : "REJECT REQUEST",
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
        FlatButton(
          disabledColor: Colors.white,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(
                  width: 2,
                  color: _outcome == "ACCEPT" ||
                          _outcome == "REJECT" ||
                          _outcome == "ERROR"
                      ? Colors.white
                      : const Color(0xFF4DB97F))),
          onPressed:
              /** CHECK IF BOTH PARTIES ARE AVAILABLE (default bothAvailable = true) */
              isDisabled
                  ? null
                  : () {
                      setState(() {
                        isDisabled = true;
                        _outcome = bothAvailable ? "ACCEPT" : "ERROR";
                      });
                      showAlertDialog(context);
                    },
          disabledTextColor: Colors.white,
          child: Text("ACCEPT",
              style: TextStyle(
                color: _outcome == "ACCEPT" ||
                        _outcome == "REJECT" ||
                        _outcome == "ERROR"
                    ? Colors.white
                    : const Color(0xFF4DB97F),
                fontFamily: 'Martel Sans',
                fontWeight: FontWeight.w900,
              )),
        ),
        FlatButton(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(
                  width: 2,
                  color: (_outcome == "ACCEPT")
                      ? const Color(0xFF4DB97F)
                      : const Color(0xFFD06161))),
          disabledColor: _outcome == "REJECT" || _outcome == "ERROR"
              ? const Color(0xFFD06161)
              : _outcome == "ACCEPT" ? const Color(0xFF4DB97F) : Colors.white,
          onPressed: isDisabled
              ? null
              : () {
                  setState(() {
                    isDisabled = true;
                    _outcome = "REJECT";
                  });
                  showAlertDialog(context);
                },
          child: Text(
              _outcome == "REJECT" || _outcome == "ERROR"
                  ? "REJECTED"
                  : _outcome == "ACCEPT" ? "ACCEPTED" : "REJECT",
              style: TextStyle(
                color: _outcome == "REJECT" ||
                        _outcome == "ACCEPT" ||
                        _outcome == "ERROR"
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
