import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helloworld/domain/identity_access/model/user/learner/learner.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/domain/schedule_requests/service/i_profile_repository.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:helloworld/infrastructure/identity_access/model/learner_dto.dart';
import 'package:helloworld/infrastructure/identity_access/profile_repository.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';
import 'package:helloworld/presentation/profile/own_profile.dart';
import 'package:provider/provider.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Palette.backgroundColor,
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            NavigationButton(
              icon: Icons.calendar_today,
              caption: "REQUEST",
              route: () => Routes.sailor(Routes.requests),
            ),
            NavigationButton(
              icon: Icons.send,
              caption: "MESSENGER",
              route: () async {
                final userId = await ownUserId;
                Routes.sailor(Routes.messenger, params: {'userId': userId});
              },
            ),
            NavigationButton(
              icon: Icons.person,
              caption: "PROFILE",
              route: () async {
                final IProfileRepository repo = ProfileRepository();
                final userId = await ownUserId;
                final learner =
                    await repo.getLearner(UserId.fromUniqueId(userId));

                final learnerCopy =
                    await LearnerDto.fromDomain(learner.getOrElse(() => null))
                        ?.toDomain();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ListenableProvider(
                        create: (_) => ValueNotifier<Learner>(learnerCopy),
                        child: OwnProfile(
                          isLearnerOrMentor: true,
                          learner: learner.getOrElse(() => null),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  final IconData icon;
  final String caption;
  final void Function() route;

  const NavigationButton(
      {Key key,
      @required this.icon,
      @required this.caption,
      @required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(
            icon,
            color: Palette.backgroundColor,
            size: 35,
          ),
          onPressed: route,
        ),
        Text(
          caption,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Palette.backgroundColor,
              fontFamily: 'Martel Sans'),
        ),
      ],
    );
  }
}
