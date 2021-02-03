import 'dart:async';

import 'package:flutter/material.dart';
import 'package:renda_clone/models/game.dart';
// import 'package:renda_clone/stores/timer.dart';
import 'package:renda_clone/util/var/index.dart';

class GameStore extends ChangeNotifier {
  // 実際に管理される商品のリスト
  Game _game =
      Game(mode: gameModes["A"], time: gameTimes["A"], inPlay: false, count: 0);
  // 外側から直接変更されないように、getterのみ公開
  Game get game => _game;
  Timer _timer;
  int _timeCount = 0;
  int get timeCount => _timeCount;

  static const ms = const Duration(milliseconds: 12);

  changeGameMode(String key) {
    if (game.mode == gameModes[key]) {
      return;
    }
    _game.mode = gameModes[key];
    _game.time = gameTimes[key];
    notifyListeners();
  }

  // incrementCount() {
  //   _game.count += 1;
  //   notifyListeners();
  // }
  incrementCount() {
    if (_timer == null) {
      inPlayToggle();
      return startTimer();
    }
    _game.count += 1;
    notifyListeners();
  }

  inPlayToggle() => {
        _game.inPlay = !_game.inPlay,
        notifyListeners(),
      };

  startTimer() {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(ms, (timer) {
      updateCounter();
    });
    notifyListeners();
  }

  // startTimer(dynamic callBack, int status) {
  //   if (_timer != null) {
  //     _timer.cancel();
  //   }
  //   Timer.periodic(ms, (timer) {
  //     updateCounter(callBack);
  //   });
  //   notifyListeners();
  // }
  void updateCounter() {
    if (game.time - 1 == timeCount) {
      endTimer();
      // inPlayToggle();
    }
    _timeCount++;
    notifyListeners();
  }
  // void updateCounter(dynamic callBack) {
  //   if (game.time == timeCount) {
  //     callBack();
  //     endTimer();
  //   }
  //   _timeCount++;
  //   notifyListeners();
  // }

  void endTimer() {
    _timer.cancel();
    notifyListeners();
  }

  resetCount() {
    _timeCount = 0;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}
