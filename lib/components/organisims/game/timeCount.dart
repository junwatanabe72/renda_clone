import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/stores/game.dart';

const leadTextA = "Press any button";
const leadTextB = "to start";

class TimeCount extends StatelessWidget {
  final bool inPlay;
  TimeCount({@required this.inPlay});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: inPlay
            ? Selector<GameStore, int>(
                selector: (context, game) => game.game.count,
                builder: (context, count, child) => Container(
                    alignment: Alignment.center,
                    child: Text(count.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 40,
                        ))))
            :
  }
}
