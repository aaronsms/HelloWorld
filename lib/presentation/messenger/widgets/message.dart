import 'package:flutter/material.dart';
import 'package:helloworld/presentation/core/palette.dart';

class Message extends StatelessWidget {
  final String sender;
  final int id;
  final Image senderImage;
  final String time;
  final String text;
  final bool unread;

  const Message({
    Key key,
    @required this.sender,
    this.senderImage,
    @required this.id,
    @required this.time,
    @required this.text,
    @required this.unread,
  }) : super(key: key);

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
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(sender,
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
              Text(time,
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
