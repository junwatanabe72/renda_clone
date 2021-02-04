import 'dart:async';
import 'package:flutter/material.dart';

class TimerStore with ChangeNotifier {
  int _timeCount = 0;
  int get timeCount => _timeCount;
  Timer _timer;
  static const ms = const Duration(milliseconds: 10);

  startTimer(dynamic callBack, int status) {
    if (_timer != null) {
      _timer.cancel();
    }
    _timer = Timer.periodic(ms, (timer) {
      updateCounter(callBack, status);
    });
    notifyListeners();
  }

  void updateCounter(dynamic callBack, int status) {
    if (status == _timeCount) {
      callBack();
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
    _timer.cancel();
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}
