import 'package:flutter/material.dart';
import 'package:renda_clone/models/game.dart';
import 'package:renda_clone/models/user.dart';
import 'package:renda_clone/stores/timer.dart';
import 'package:renda_clone/util/var/index.dart';

class GameStore extends ChangeNotifier {
  Game _game = Game(
      mode: gameModes[mode.first.toString()],
      time: gameTimes[mode.first.toString()],
      inPlay: false,
      count: 0);
  Game get game => _game;

  changeGameMode(String key) {
    if (game.mode == gameModes[key]) {
      return;
    }
    _game.mode = gameModes[key];
    _game.time = gameTimes[key];
    notifyListeners();
  }

  incrementCount(TimerStore timer, User user) {
    if (timer.timeCount == 0) {
      insertEndlessCount(user);
      inPlayToggle();
      timer.startTimer(inPlayToggle(), game.time);
    }
    _game.count += 1;
    notifyListeners();
  }

  gameEnd() => {
        if (_game.inPlay) {inPlayToggle()},
        _game.count = 0,
        notifyListeners(),
      };

  inPlayToggle() => {
        _game.inPlay = !_game.inPlay,
        notifyListeners(),
      };

  insertEndlessCount(User user) {
    switch (game.mode) {
      case "ENDLESS":
        _game.count = user.third;
        break;
      default:
        break;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
