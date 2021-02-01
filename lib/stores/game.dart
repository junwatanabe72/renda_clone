import 'package:flutter/material.dart';
import 'package:renda_clone/models/game.dart';
import 'package:renda_clone/util/var/index.dart';

class GameStore extends ChangeNotifier {
  // 実際に管理される商品のリスト
  Game _game =
      Game(mode: gameModes["A"], time: gameTimes["A"], inPlay: false, count: 0);
  // 外側から直接変更されないように、getterのみ公開
  Game get game => _game;

  changeGameMode(String key) {
    if (game.mode == gameModes[key]) {
      return;
    }
    game.mode = gameModes[key];
    game.time = gameTimes[key];
    notifyListeners();
  }

  incrementCount() => {game.count += 1, notifyListeners()};
  decrementTime() {
    while (game.count >= 0) {
      game.time -= 1;
      notifyListeners();
    }
    notifyListeners();
    return;
  }

  inPlayToggle() => {game.inPlay = !game.inPlay, notifyListeners()};

  gameStart() {
    inPlayToggle();
    decrementTime();
    inPlayToggle();
  }
}
