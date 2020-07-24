import 'package:flutter/material.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/domain/schedule_requests/service/i_profile_repository.dart';
import 'package:helloworld/infrastructure/identity_access/profile_repository.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/homepage/widgets/language_set.dart';
import 'package:helloworld/presentation/profile/learner_profile.dart';

class LearnerDisplay extends StatelessWidget {
  final String name;
  final int active;
  final double distance;
  final List<LanguageSet> common;
  final List<LanguageSet> learning;
  final ImageProvider display;
  final UserId userId;

  const LearnerDisplay({
    Key key,
    @required this.name,
    @required this.active,
    @required this.distance,
    @required this.common,
    @required this.learning,
    this.display,
    this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 0.0,
        margin: const EdgeInsets.all(0.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          ListTile(
              onTap: () async {
                final IProfileRepository repo = ProfileRepository();
                final learner = await repo.getLearner(userId);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LearnerProfile(
                          learner: learner.getOrElse(() => null));
                    },
                  ),
                );
              },
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Palette.primaryColor,
                    width: 3.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: display,
                ),
              ),
              title: Text(name,
                  style: TextStyle(
                      color: Palette.primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Martel Sans')),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Active ' + active.toString() + ' days ago',
                        style: TextStyle(
                            height: 1.2,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Martel Sans')),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Palette.primaryColor,
                        ),
                        Text(
                            distance.toString() +
                                "km from your preferred location",
                            style: TextStyle(
                                color: Palette.primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Martel Sans'))
                      ],
                    ),
                    Row(children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'LEARNING',
                          style: TextStyle(
                              color: Palette.secondaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
                    Column(
                      children: learning,
                    ),
                    Row(children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'ALSO SPEAKS',
                          style: TextStyle(
                              color: Palette.secondaryColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
                    Column(children: common),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          RaisedButton(
                            color: Palette.secondaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            onPressed: () async {
                              final IProfileRepository repo =
                                  ProfileRepository();
                              final learner = await repo.getLearner(userId);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LearnerProfile(
                                        learner: learner.getOrElse(() => null));
                                  },
                                ),
                              );
                            },
                            child: Text(
                              'View Profile',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ])
                  ]))
        ]));
  }
}
