import 'package:flutter/material.dart';
import 'package:renda_clone/models/game.dart';
import 'package:renda_clone/stores/timer.dart';
import 'package:renda_clone/util/var/index.dart';

class GameStore extends ChangeNotifier {
  Game _game =
      Game(mode: gameModes["A"], time: gameTimes["A"], inPlay: false, count: 0);
  Game get game => _game;

  changeGameMode(String key) {
    if (game.mode == gameModes[key]) {
      return;
    }
    _game.mode = gameModes[key];
    _game.time = gameTimes[key];
    notifyListeners();
  }

  incrementCount(TimerStore timer) {
    if (timer.timeCount == 0) {
      inPlayToggle();
      timer.startTimer(inPlayToggle(), game.time);
    }
    _game.count += 1;
    notifyListeners();
  }

  gameEnd() => {
        _game.count = 0,
        inPlayToggle(),
        notifyListeners(),
      };
  inPlayToggle() => {
        _game.inPlay = !_game.inPlay,
        notifyListeners(),
      };

  @override
  void dispose() {
    super.dispose();
  }
}
