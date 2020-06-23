import 'package:flutter/material.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

class LanguageFilter extends StatefulWidget {
  @override
  _LanguageFilterState createState() => _LanguageFilterState();
}

class _LanguageFilterState extends State<LanguageFilter> {
  List _goals;
  String _goalsResult;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _goals = [];
    _goalsResult = "";
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _goalsResult = _goals.toString();
      });
    }
  }

  List languages = [
    {"display": "English", "value": "English"},
    {"display": "Japanese", "value": "Japanese"},
    {"display": "Mandarin (Chinese)", "value": "Mandarin (Chinese)"},
    {"display": "Spanish", "value": "Spanish"},
    {"display": "Korean", "value": "Korean"},
    {"display": "French", "value": "French"},
    {"display": "German", "value": "German"},
    {"display": "Thai", "value": "Thai"},
    {"display": "Malay", "value": "Malay"},
    {"display": "Italiano", "value": "Italiano"},
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: MultiSelectFormField(
              autovalidate: false,
              titleText: 'Select Languages',
              hintText: '',
              validator: (value) {
                if (value == null || value.length == 0) {
                  return 'Please select one or more options';
                }
                return null;
              },
              dataSource: languages,
              textField: 'display',
              valueField: 'value',
              okButtonLabel: 'OK',
              cancelButtonLabel: 'CANCEL',
              onSaved: (value) {
                if (value == null) return;
                setState(() {
                  _goals = value as List;
                });
              },
            ),
          ),
        ]));
  }
}
