import 'package:flutter/material.dart';
import 'package:renda_clone/models/user.dart';
// import "package:renda_clone/util/var/index.dart";

class UserStore extends ChangeNotifier {
  User _user;
  Set<User> _users = {};
  User get user => _user;
  Set<User> get users => _users;

  createUser(String value) {
    if (value.length == 0) {
      return _user = null;
    }
    if (_users.length != 0) {
      final existUser = _users.where((user) => user.name == value);
      if (existUser.length != 0) {
        return _user = existUser.first;
      }
    }
    final User newUser = User(name: value, first: 0, second: 0, third: 0);
    _users..add(newUser);
    return _user = newUser;
  }

  updateUserScore(String gameMode, int count) {
    print(gameMode);
    switch (gameMode) {
      case "10S":
        _user.first = _user.first > count ? _user.first : count;
        break;
      case "60S":
        _user.second = _user.second > count ? _user.second : count;
        break;
      default:
        _user.third = _user.third > count ? _user.third : count;
        break;
    }
    // notifyListeners();
  }
}
