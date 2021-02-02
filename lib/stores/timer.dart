import 'dart:async';
import 'package:flutter/material.dart';

class TimerStore with ChangeNotifier {
  int playTime;
  int _timeCount = 0;
  static const sec = const Duration(seconds: 1);
  static const ms = const Duration(milliseconds: 12);
  // static const mc = const Duration(microseconds: 100);
  int get timeCount => _timeCount;

  Timer _timer;
  Future<Null> delay(int milliseconds) {
    return new Future.delayed(new Duration(milliseconds: milliseconds * 12));
  }

  startTimer(int gameTime) async {
    if (_timer != null) {
      _timer.cancel();
    }
    playTime = gameTime;
    Timer.periodic(ms, (timer) {
      updateCounter();
    });
    await delay(playTime);
  }

  void updateCounter() {
    if (playTime > _timeCount)
      _timeCount++;
    else
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
