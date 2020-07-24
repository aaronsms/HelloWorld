import 'dart:io';

import 'package:flutter/material.dart';
import 'package:helloworld/domain/identity_access/model/user/user_id.dart';
import 'package:helloworld/infrastructure/common/io_utils.dart';
import 'package:helloworld/presentation/core/palette.dart';

class RecentContact extends StatelessWidget {
  final String name;
  final UserId id;

  const RecentContact({
    Key key,
    @required this.name,
    @required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text(name,
            style: TextStyle(
              color: Palette.primaryColor,
              fontFamily: 'Martel Sans',
              fontWeight: FontWeight.w900,
              fontSize: 14,
            ))
      ],
    );
  }
}
