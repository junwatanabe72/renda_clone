import 'package:flutter/material.dart';
import "../../util/var/index.dart";

class Score extends StatelessWidget {
  final int score;
  final String mode;
  Score({this.score = 0, @required this.mode});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(gameModes[this.mode]),
        Text(this.score.toString())
      ],
    ));
  }
}
