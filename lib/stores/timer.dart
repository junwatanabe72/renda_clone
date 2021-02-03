import 'dart:async';
import 'package:flutter/material.dart';

class TimerStore with ChangeNotifier {
  int playTime;
  int _timeCount = 0;

  static const ms = const Duration(milliseconds: 12);
  int get timeCount => _timeCount;

  Timer _timer;
  Future<Null> delay(int milliseconds) {
    return new Future.delayed(new Duration(milliseconds: milliseconds * 12));
  }

  startTimer(dynamic callBack, int status) {
    if (_timer != null) {
      _timer.cancel();
    }
    Timer.periodic(ms, (timer) {
      updateCounter(callBack, status);
    });
    notifyListeners();
  }

  void updateCounter(dynamic callBack, int status) {
    if (status == _timeCount) {
      // call Back();
      endTimer();
    }
    _timeCount++;
    notifyListeners();
  }

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
