// ChangeNotifierを継承して新しいStoreクラスを作る
import 'package:flutter/material.dart';
import 'package:renda_clone/models/user.dart';

class UserStore extends ChangeNotifier {
  // 実際に管理される商品のリスト
  User _user;
  Set<User> _users = {};
  // 外側から直接変更されないように、getterのみ公開
  User get user => _user;
  Set<User> get users => _users;

  // Storeに変更を要求するインターフェイス
  createUser(String value) {
    if (value.length == 0) {
      _user = null;
      notifyListeners();
    }
    if (_users.length != 0) {
      final existUser = _users.where((user) => user.name == value);
      if (existUser.length != 0) {
        return;
      }
    }
    final User newUser = User(name: value);
    _users..add(newUser);
    _user = newUser;
    notifyListeners();
  }
}
