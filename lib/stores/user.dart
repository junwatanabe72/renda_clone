// ChangeNotifierを継承して新しいStoreクラスを作る
import 'package:flutter/material.dart';
import 'package:renda_clone/models/user.dart';

class UserStore extends ChangeNotifier {
  // 実際に管理される商品のリスト
  User _user;
  Set<User> _users;
  // 外側から直接変更されないように、getterのみ公開
  User get user => _user;
  Set<User> get users => _users;
  // リクエスト実行中に再リクエストしないようにしたい
  // bool _isFetching = false;
  // bool get isFetching => _isFetching;

  // Storeに変更を要求するインターフェイス
  createUser(String value) {
    // 取得できた商品のリストを追加する
    final User newUser = User(name: value);
    _user = newUser;
    // 追加できたら、このStoreを購読しているウィジェットに通知する
    notifyListeners();
  }
}
