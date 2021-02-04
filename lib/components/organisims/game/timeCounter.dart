import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/models/game.dart';
import 'package:renda_clone/stores/timer.dart';
import 'package:renda_clone/util/var/index.dart';

const leadTextA = "Press any button";
const leadTextB = "to start";

class TimeCounter extends StatelessWidget {
  final double width;
  final Game game;
  final bool inPlay;
  TimeCounter({this.game, this.inPlay, this.width});

  String getCountText(TimerStore store, Game game) {
    if (game.mode == gameModes[mode.third.toString()]) {
      return initalCounters[mode.third.toString()];
    }

    List<String> base = ["0", "0", "0", "0"];
    String time = store.timeCount.toString();
    final list = time.split("");
    final reversdList = list.reversed.toList();
    reversdList.asMap().forEach((index, value) => base[index] = value);
    base.insert(2, ".");
    return base.reversed.join();
  }

  String changeShowNumber(String gameMode) {
    switch (gameMode) {
      case "10S":
        return initalCounters[mode.first.toString()];
        break;
      case "60S":
        return initalCounters[mode.second.toString()];
        break;
      default:
        return initalCounters[mode.third.toString()];
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return inPlay
        ? Container(
            width: width / 2.1,
            child: Selector<TimerStore, String>(
                selector: (context, timer) => getCountText(timer, game),
                builder: (context, count, child) => Container(
                    alignment: Alignment.center,
                    child: Text(count.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 40,
                        )))))
        : Container(
            width: width / 2.1,
            alignment: Alignment.center,
            child: Text(changeShowNumber(game.mode),
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 40)));
  }
}
