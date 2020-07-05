import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class ConfirmationCard extends StatelessWidget {
  final String date;
  final List<String> slots;

  const ConfirmationCard({Key key, @required this.date, @required this.slots})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Palette.primaryColor,
        child: ListTile(
          title: Center(
              child: Text(date,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Martel Sans',
                      fontSize: 18,
                      fontWeight: FontWeight.w700))),
          subtitle: Center(
              child: Column(
            children: slots
                .map((slot) => Text(slot,
                    style: TextStyle(
                        fontFamily: 'Martel Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16)))
                .toList(),
          )),
        ));
  }
}
