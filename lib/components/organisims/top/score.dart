import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final String mode;
  final int score;
  Score({this.score, @required this.mode});

  @override
  Widget build(BuildContext context) {
    final scoreText = this.score == null ? "---" : this.score.toString();
    return Center(
        child: Column(
      children: <Widget>[
        Text(this.mode,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              height: 1.0,
            )),
        Text(
          scoreText,
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 20,
            height: 1.0,
          ),
        )
      ],
    ));
  }
}
