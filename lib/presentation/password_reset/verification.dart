import 'package:flutter/material.dart';
import 'package:helloworld/presentation/common/palette.dart';
import 'package:helloworld/presentation/passwordreset/header.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0), child: ResetPasswordHeader()),
        body: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        "Please enter the 4-digit recovery code sent to your email.",
                        style: TextStyle(
                            color: Palette.primaryColor,
                            // fontFamily: 'Martel Sans',
                            fontWeight: FontWeight.w900,
                            fontSize: 18),
                      )),
                  Container(
                    padding:
                        EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10.0),
                    child: PinCodeTextField(
                      length: 4,
                      obsecureText: false,
                      backgroundColor: Colors.white.withOpacity(0),
                      pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(8),
                          inactiveColor: Colors.grey,
                          selectedFillColor: Palette.primaryColor,
                          fieldHeight: 55,
                          fieldWidth: 65,
                          activeColor: Palette.primaryColor),
                      onChanged: (value) {
                        setState(() {
                          currentText = value;
                        });
                      },
                    ),
                  ),
                  Center(
                      child: RichText(
                          text: TextSpan(
                    text: "Resend code",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Palette.secondaryColor,
                      fontWeight: FontWeight.w800,
                      // fontFamily: 'Martel Sans',
                      fontSize: 17,
                    ),
                  ))),
                  Container(
                    padding: EdgeInsets.only(
                      top: 50.0,
                    ),
                    child: RaisedButton(
                      onPressed: () {
                        /** CHECK VALIDITY OF CODE */
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      color: Palette.primaryColor,
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ])));
  }
}
