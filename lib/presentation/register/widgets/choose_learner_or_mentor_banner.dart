import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class ChooseLearnerOrMentorBanner extends StatefulWidget {
  @override
  _ChooseLearnerOrMentorBannerState createState() => _ChooseLearnerOrMentorBannerState();
}

class _ChooseLearnerOrMentorBannerState extends State<ChooseLearnerOrMentorBanner> {
  bool registerAsLearner = true;
  bool get registerAsMentor => !registerAsLearner;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.670,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            'I want to sign up as a...',
            style: TextStyle(
              fontFamily: "Gill Sans",
              fontWeight: FontWeight.w900,
              fontSize: 24.0,
              letterSpacing: 0.2,
              color: Palette.primaryColor,
            ),
          ),
          const SizedBox(height: 32),
          InkWell(
            onTap: () => setState(() => registerAsLearner = true),
            child: Ink(
              width: size.width * 0.8,
              height: 90,
              child: Center(
                child: Text(
                  "Learner",
                  style: TextStyle(
                    fontFamily: "Gill Sans",
                    fontWeight: FontWeight.w900,
                    fontSize: 24.0,
                    color: registerAsLearner ? Colors.white : Colors.grey,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: registerAsLearner ? Palette.secondaryColor : Palette.disabledColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          const SizedBox(height: 24),
          InkWell(
            onTap: () => setState(() => registerAsLearner = false),
            child: Ink(
              width: size.width * 0.8,
              height: 90,
              child: Center(
                child: Text(
                  "Mentor",
                  style: TextStyle(
                    fontFamily: "Gill Sans",
                    fontWeight: FontWeight.w900,
                    fontSize: 24.0,
                    color: registerAsMentor ? Colors.white : Colors.grey,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: registerAsMentor ? Palette.secondaryColor : Palette.disabledColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.120),
        ],
      ),
    );
  }
}
