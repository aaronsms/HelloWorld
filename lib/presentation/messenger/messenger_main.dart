import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';
import 'package:helloworld/presentation/messenger/widgets/category_selector.dart';
import 'package:helloworld/presentation/messenger/widgets/user.dart';
import 'package:helloworld/presentation/messenger/widgets/recent_chat.dart';

// ignore: must_be_immutable
class MessengerMain extends StatelessWidget {
  List<User> recents = [
    const User(id: 1, name: "Chelsea"),
    const User(id: 2, name: "John"),
    const User(id: 3, name: "Samuel"),
    const User(id: 4, name: "Shawn"),
    const User(id: 5, name: "Fatimah"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        appBar: AppBar(
          backgroundColor: Palette.backgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            iconSize: 30.0,
            color: Palette.primaryColor,
            onPressed: () {},
          ),
          title: Center(
              child: Text("Chats",
                  style: TextStyle(
                      fontFamily: 'Martel Sans',
                      fontSize: 28.0,
                      color: Palette.primaryColor,
                      fontWeight: FontWeight.w900))),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Palette.primaryColor,
              onPressed: () {},
            ),
          ],
        ),
        body: Column(children: <Widget>[
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 15.0),
                    child: Text("Recent Contacts",
                        style: TextStyle(
                            color: Palette.secondaryColor,
                            fontSize: 16,
                            fontFamily: 'Martel Sans',
                            letterSpacing: 1,
                            fontWeight: FontWeight.w900))),
                Container(
                    height: 130,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: 10.0),
                      scrollDirection: Axis.horizontal,
                      itemCount: recents.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: recents[index]);
                      },
                    )),
                const Divider(color: Palette.tertiaryColor),
                RecentChat(),
              ],
            ),
          )),
        ]));
  }
}
