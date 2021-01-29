import 'package:flutter/material.dart';
import "../../atoms/score.dart";
import "../../../util/var/index.dart";

// StatelessWidgetを継承
class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    const user = {"resultA": 1, "resultB": 2, "resultC": 3};
    final modesKey = gameModes.keys.toList();

    return Container(
        padding: EdgeInsets.all(10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: modesKey
                .map((key) => Score(score: user["result$key"], mode: key))
                .toList()));
  }
}
