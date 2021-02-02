import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/stores/game.dart';

const leadTextA = "Press any button";
const leadTextB = "to start";

class GameText extends StatelessWidget {
  final bool inPlay;
  final bool isOver;
  GameText({@required this.inPlay, @required this.isOver});

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
            : Column(mainAxisSize: MainAxisSize.max, children: [
                const Text(leadTextA,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 40,
                      height: 1.0,
                    )),
                const Text(leadTextB,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 40,
                      height: 1.0,
                    ))
              ]));
  }
}
