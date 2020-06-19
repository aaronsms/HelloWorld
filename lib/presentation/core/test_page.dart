import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/register/widgets/proficiency_dialog.dart';
import 'package:helloworld/presentation/register/widgets/language_dialog.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  String language = '';
  String proficiency = '';
  int count2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: GestureDetector(
          onTap: () async {
            final String res = await _buildDialog(
              context,
              title: "Please select your language",
              dialog: () => LanguageDialog(),
              initialValue: '',
            );
            final String res2 = await _buildDialog(
              context,
              title: "Please select your proficiency",
              dialog: () => ProficiencyDialog(),
              initialValue: '',
            );

            if (res != null && proficiency != null) {
              setState(() {
                language = res;
                proficiency = res2;
              });
            }
          },
          child: Container(
            height: 80,
            width: 300,
            color: Colors.white,
            child: Text('$language $proficiency' ?? 'asdf'),
          ),
        ),
      ),
    );
  }

  Future<String> _buildDialog(BuildContext context,
      {String title, Widget Function() dialog, String initialValue}) async {
    final String result = await showDialog(
      context: context,
      builder: (context) {
        return ListenableProvider(
          create: (_) => ValueNotifier<String>(''),
          child: AlertDialog(
            title: Text(title),
            content: Container(
              height: 80,
              width: double.infinity,
              child: dialog(),
            ),
            actions: <Widget>[
              _DoneRaisedButton(),
            ],
          ),
        );
      },
    );
    return result;
  }
}

class _DoneRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        Navigator.of(context).pop(context.read<ValueNotifier<String>>().value);
      },
      color: Palette.primaryColor,
      child: const Text("Select"),
    );
  }
}