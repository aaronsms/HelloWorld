import 'package:helloworld/presentation/core/palette.dart';
import 'package:flutter/material.dart';

class UserMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: Palette.secondaryColor,
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                  value: 'Report User',
                  child: Text(
                    'Report User',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Martel Sans',
                        fontSize: 12,
                        fontWeight: FontWeight.w900),
                  )),
              const PopupMenuItem<String>(
                  value: 'Block User',
                  child: Text('Block User',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Martel Sans',
                          fontSize: 12,
                          fontWeight: FontWeight.w900))),
            ]);
  }
}
