import 'package:flutter/material.dart';
import 'package:renda_clone/models/game.dart';
import 'package:renda_clone/stores/timer.dart';
import 'package:renda_clone/util/var/index.dart';

class GameStore extends ChangeNotifier {
  // 実際に管理される商品のリスト
  Game _game =
      Game(mode: gameModes["A"], time: gameTimes["A"], inPlay: false, count: 0);
  // 外側から直接変更されないように、getterのみ公開
  Game get game => _game;

  Future<Null> delay(int milliseconds) {
    return new Future.delayed(new Duration(milliseconds: milliseconds * 10));
  }

  changeGameMode(String key) {
    if (game.mode == gameModes[key]) {
      return;
    }
    _game.mode = gameModes[key];
    _game.time = gameTimes[key];
    notifyListeners();
  }

  incrementCount() {
    _game.count += 1;
    notifyListeners();
  }

  inPlayToggle() => {
        _game.inPlay = !_game.inPlay,
        notifyListeners(),
      };

  gameStart(TimerStore timer) async {
    _game.inPlay = !_game.inPlay;
    await timer.startTimer(_game.time);
    _game.inPlay = !_game.inPlay;
    // user.10s=count;
    _game.count = 0;
  }
}
