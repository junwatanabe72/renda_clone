import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:renda_clone/components/organisims/top/score.dart';
// import 'package:renda_clone/models/user.dart';
// import 'package:renda_clone/stores/user.dart';
import "../../../util/var/index.dart";

// StatelessWidgetを継承
class Header extends StatelessWidget with PreferredSizeWidget {
  final double height;
  final double width;
  Header({this.height, this.width});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final modesKey = gameModes.keys.toList();
    return Container(
        width: this.width,
        height: this.height,
        padding: EdgeInsets.all(5),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Score(mode: gameModes[modesKey[0]]),
          Score(mode: gameModes[modesKey[1]]),
          Score(mode: gameModes[modesKey[2]]),
        ]));
  }
}
