import 'package:helloworld/domain/identity_access/model/user/biography.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/mentor/mentor.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BiographyUi extends StatelessWidget {
  final String bio;
  final bool isEditing;
  final bool isLearnerOrMentor;

  const BiographyUi({
    Key key,
    @required this.bio,
    this.isEditing = false,
    this.isLearnerOrMentor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isEditing) {
      return Container(
        width: 200,
        height: 36,
        padding: const EdgeInsets.all(4.0),
        child: TextFormField(
          initialValue: bio,
          onChanged: (value) {
            if (isLearnerOrMentor) {
              final valueNotifier = context.read<ValueNotifier<Learner>>();
              valueNotifier.value =
                  valueNotifier.value.copyWith(biography: Biography(value));
            } else {
              final valueNotifier = context.read<ValueNotifier<Mentor>>();
              valueNotifier.value =
                  valueNotifier.value.copyWith(biography: Biography(value));
            }
          },
          decoration: InputDecoration(
            labelText: 'Biography',
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
      );
    } else {
      return Text(
        bio,
        style: TextStyle(
          color: Palette.primaryColor,
          fontFamily: 'Martel Sans',
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      );
    }
  }
}
