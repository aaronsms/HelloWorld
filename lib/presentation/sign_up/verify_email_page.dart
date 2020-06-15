import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';
import 'package:helloworld/presentation/sign_up/widgets/header.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyEmailPage extends StatefulWidget {
  @override
  _VerifyEmailPageState createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  String address;
  String currentText = "";
  TextEditingController textEditingController = TextEditingController()
    ..text = "address@u.nus.edu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0), child: Header()),
      body: SizedBox(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 30.0, bottom: 25.0),
              child: const Image(
                  image: AssetImage('assets/images/verifyemail.png'),
                  height: 300,
                  width: 300),
            ),
            Text("Verify your email",
                style: TextStyle(
                    color: Palette.primaryColor,
                    fontFamily: 'Martel Sans',
                    fontWeight: FontWeight.w900,
                    fontSize: 24)),
            Text(
              "Please enter the 4-digit code sent to your email.",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Martel Sans',
                  fontWeight: FontWeight.w300,
                  fontSize: 16),
            ),
            Container(
              padding: const EdgeInsets.only(left: 18.0, right: 18.0),
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
                    fontFamily: 'Martel Sans',
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 25.0),
              child: RaisedButton(
                onPressed: () => Routes.sailor(Routes.verifiedLearner),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                color: Palette.primaryColor,
                child: Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
