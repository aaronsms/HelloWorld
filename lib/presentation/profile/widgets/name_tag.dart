import 'package:flutter/material.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/domain/identity_access/model/user/name.dart';
import 'package:provider/provider.dart';
import 'package:helloworld/presentation/core/palette.dart';

class NameTag extends StatelessWidget {
  final String name;
  final String type;
  final bool isEditing;
  final bool isLearnerOrMentor;

  const NameTag({
    Key key,
    @required this.name,
    @required this.type,
    this.isEditing = false,
    this.isLearnerOrMentor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (!isEditing)
          Text(name,
              style: TextStyle(
                  color: Palette.primaryColor,
                  fontFamily: 'Martel Sans',
                  fontSize: 20,
                  height: 2.5,
                  fontWeight: FontWeight.w900)),
        if (isEditing)
          Container(
            width: 200,
            height: 36,
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              initialValue: name,
              onChanged: (value) {
                if (isLearnerOrMentor) {
                  final valueNotifier = context.read<ValueNotifier<Learner>>();
                  valueNotifier.value =
                      valueNotifier.value.copyWith(name: Name(value));
                } else {
                  final valueNotifier = context.read<ValueNotifier<Mentor>>();
                  valueNotifier.value =
                      valueNotifier.value.copyWith(name: Name(value));
                }
              },
              decoration: InputDecoration(
                labelText: 'Full Name',
                labelStyle: TextStyle(
                  color: Palette.primaryColor,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(
                    color: Palette.primaryColor,
                    width: 2,
                  ),
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                contentPadding: const EdgeInsets.all(10.0),
              ),
            ),
          ),
        if (!isEditing)
          Container(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                alignment: Alignment.center,
                width: 60,
                height: 25,
                decoration: BoxDecoration(
                    color: Palette.secondaryColor,
                    border: Border.all(color: Palette.secondaryColor),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Text(type,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Martel Sans',
                        fontSize: 8,
                        height: 2,
                        fontWeight: FontWeight.w500)),
              ))
      ],
    );
  }
}
