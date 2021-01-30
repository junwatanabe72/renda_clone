import 'package:flutter/material.dart';
import "../../atoms/score.dart";
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
    const user = {"resultA": 1, "resultB": 2, "resultC": 3};
    final modesKey = gameModes.keys.toList();

    return Container(
        width: this.width,
        height: this.height,
        padding: EdgeInsets.all(5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: modesKey
                .map((key) => Score(score: user["result$key"], mode: key))
                .toList()));
  }
}
