import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';

class RegisterPrePage extends StatefulWidget {
  @override
  RegisterPrePageState createState() => RegisterPrePageState();
}

class RegisterPrePageState extends State<RegisterPrePage> {
  bool _isLearner = false;
  bool _isMentor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Palette.primaryColor,
          title: Container(
            margin: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Create Account',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          actions: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 20.0),
              child: const Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'I want to sign up as a...',
            style: TextStyle(
              color: Palette.primaryColor,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 100,
              width: 300,
              child: RaisedButton(
                onPressed: () => setState(() {
                  if (_isMentor) {
                    _isMentor = !_isMentor;
                  }
                  _isLearner = !_isLearner;
                }),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                ),
                color: _isLearner ? Palette.secondaryColor : Colors.grey,
                child: Text(
                  "Learner",
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: 100,
              width: 300,
              child: RaisedButton(
                onPressed: () => setState(() {
                  if (_isLearner) {
                    _isLearner = !_isLearner;
                  }
                  _isMentor = !_isMentor;
                }),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0)),
                color: _isMentor ? Palette.secondaryColor : Colors.grey,
                child: Text(
                  "Mentor",
                  style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(15.0),
            alignment: Alignment.center,
            child: RaisedButton(
              onPressed: () {
                if (_isLearner == false && _isMentor == false) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return _OptionCannotBeNullAlertDialog();
                    },
                  );
                } else {
                  _isLearner
                      ? Routes.sailor(Routes.learnerAccount)
                      : Routes.sailor(Routes.mentorAccount);
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.0)),
              color: Palette.primaryColor,
              child: Text(
                "Next",
                style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _OptionCannotBeNullAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: <Widget>[
        RaisedButton(
          color: Palette.secondaryColor,
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "OK",
            style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
      title: Text('Account type not chosen.',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Palette.primaryColor)),
      content: const SingleChildScrollView(
        child: Text('Please choose an account type!'),
      ),
    );
  }
}
