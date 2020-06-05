import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class SignUpAccount extends StatefulWidget {
  @override
  _SignUpAccountState createState() => _SignUpAccountState();
}

class _SignUpAccountState extends State<SignUpAccount> {
  // int _currentStep = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: Palette.primaryColor,
            title: Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text('Create Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            actions: <Widget>[
              Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Image(image: AssetImage('assets/images/logo.png')))
            ],
          )),
      body: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
            child: Image(
              image: AssetImage('assets/images/learner_step2.png'),
              height: 80,
              width: 180,
            )),
        Container(
            child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            labelText: " Name",
          ),
        )),
        Container(
            child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            labelText: " Password",
          ),
        )),
        Container(
            child: TextField(
          obscureText: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Palette.primaryColor,
            contentPadding: EdgeInsets.all(10.0),
            labelText: " Confirm Password",
          ),
        )),
        Container(
            child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            labelText: " Email Address",
          ),
        )),
      ]),
    );
  }
}

// Column(children: <Widget>[
//           Container(
//               child: ConstrainedBox(
//                   constraints: BoxConstraints.tightFor(height: 200),
//                   child: Theme(
//                       data: ThemeData(primaryColor: Palette.secondaryColor),
//                       child: Stepper(
//                         controlsBuilder: (BuildContext context,
//                             {VoidCallback onStepContinue,
//                             VoidCallback onStepCancel}) {
//                           return Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: <Widget>[
//                                 RaisedButton(
//                                     color: Palette.primaryColor,
//                                     onPressed: onStepContinue,
//                                     child: Text('Next',
//                                         style: TextStyle(color: Colors.white))),
//                                 RaisedButton(
//                                     color: Palette.primaryColor,
//                                     onPressed: onStepCancel,
//                                     child: Text('Cancel',
//                                         style: TextStyle(color: Colors.white))),
//                               ]);
//                         },
//                         type: StepperType.horizontal,
//                         currentStep: this._currentStep,
//                         steps: _mySteps(),
//                         onStepContinue: () {
//                           setState(() {
//                             if (this._currentStep <
//                                 this._mySteps().length - 1) {
//                               this._currentStep = this._currentStep + 1;
//                             } else {}
//                           });
//                         },
//                         onStepCancel: () {
//                           setState(() {
//                             if (this._currentStep > 0) {
//                               this._currentStep = this._currentStep - 1;
//                             } else {
//                               this._currentStep = 0;
//                             }
//                           });
//                         },
//                       )))),
//         ])
// List<Step> _mySteps() {
//   List<Step> _steps = [
//     Step(
//       title: Text('Account Details',
//           style: TextStyle(color: Palette.secondaryColor)),
//       content: Text(''),
//       isActive: _currentStep >= 0,
//     ),
//     Step(
//       title: Text('Profile Details'),
//       content: Text(''),
//       isActive: _currentStep >= 1,
//     )
//   ];
//   return _steps;
// }
