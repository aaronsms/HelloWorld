import 'dart:io';

import 'package:flutter/material.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:helloworld/presentation/core/palette.dart';

class MessageUi extends StatelessWidget {
  final UserId id;
  final String otherUser;
  final DateTime time;
  final String text;
  final bool unread;

  const MessageUi({
    Key key,
    @required this.otherUser,
    @required this.time,
    @required this.text,
    @required this.unread,
    @required this.id,
  }) : super(key: key);

  String _toHoursMinutes(DateTime dateTime) {
    String _twoDigits(int x) {
      return x <= 9 ? '0$x' : x.toString();
    }
    return '${_twoDigits(dateTime.hour)}:${_twoDigits(dateTime.minute)}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 20.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Palette.primaryColor,
                      width: 3.0,
                    ),
                  ),
                  child: FutureBuilder<String>(
                    future: localPath,
                    builder: (context, snapshot) {
                      try {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return CircleAvatar(backgroundImage: FileImage(File('${snapshot.data}/${id.getOrCrash()}.jpg')));
                        }
                        return Container();
                      } catch (e) {
                        return const CircleAvatar(backgroundImage: AssetImage('assets/images/avatar.png'));
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(otherUser,
                        style: TextStyle(
                            color: Palette.primaryColor,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Martel Sans',
                            fontSize: 18)),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        child: Text(
                          text,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Martel Sans',
                              fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        )),
                  ],
                )
              ],
            ),
            Column(children: <Widget>[
              if (unread)
                Container(
                    height: 23,
                    width: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Palette.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("New",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Martel Sans',
                            fontSize: 14))),
              SizedBox(height: unread ? 10.0 : 33.0),
              Text(_toHoursMinutes(time),
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Martel Sans',
                      fontSize: 14))
            ]),
          ],
        ));
  }
}
