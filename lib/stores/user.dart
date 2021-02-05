import 'package:flutter/material.dart';
import 'package:renda_clone/models/game.dart';
import 'package:renda_clone/models/user.dart';

class UserStore extends ChangeNotifier {
  // final User initalUser = User(name: "test", first: 0, second: 0, third: 0);
  User _user;
  List<User> _users = [
    User(name: "test", first: 1, second: 2, third: 3),
    User(name: "jun", first: 2, second: 4, third: 1)
  ];
  User get user => _user;
  List<User> get users => _users;

  createUser(String value) {
    if (value.length == 0) {
      _user = null;
       notifyListeners();
      return;
    }
    if (_users.length != 0) {
      final existUser = _users.where((user) => user.name == value);
      if (existUser.length != 0) {
        _user = existUser.first;
         notifyListeners();
        return;
      }
    }
    final User newUser = User(name: value, first: 0, second: 0, third: 0);
    _users..add(newUser);
    _user = newUser;
     notifyListeners();
    return;
  }

  List<User> sortUsers(String gameMode) {
    final targetUsers = [...users];

    List<User> cutUsers(List<User> baseUsers) {
      const number = 10;
      if (baseUsers.length > number) {
        final cutUser = [...baseUsers]..removeRange(number, baseUsers.length);
        return cutUser;
      }
      return baseUsers;
    }

    switch (gameMode) {
      case "10S":
        targetUsers.sort((a, b) => b.first.compareTo(a.first));
        return cutUsers(targetUsers);
        break;
      case "60S":
        targetUsers.sort((a, b) => b.second.compareTo(a.second));
        return cutUsers(targetUsers);
        break;
      default:
        targetUsers.sort((a, b) => b.third.compareTo(a.third));
        return cutUsers(targetUsers);
        break;
    }
  }

  updateUserScore(Game game, bool inPlay) {
    final mode = game.mode;
    final count = game.count;

    switch (mode) {
      case "10S":
        if (inPlay) {
          return;
        }
        _user.first = _user.first > count ? _user.first : count;
        break;
      case "60S":
        if (inPlay) {
          return;
        }
        _user.second = _user.second > count ? _user.second : count;
        break;
      default:
      if (count == 0) {
          return;
        }
        _user.third = count;
        break;
    }
  }
}
