import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/core/routes.dart';

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
              caption: "SCHEDULE",
              route: Routes.schedule,
            ),
            NavigationButton(
              icon: Icons.send,
              caption: "MESSENGER",
              route: '',
            ),
            NavigationButton(
              icon: Icons.person,
              caption: "PROFILE",
              route: Routes.profile,
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
  final String route;

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
          onPressed: () => Routes.sailor(route),
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
