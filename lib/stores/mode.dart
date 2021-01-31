import 'package:flutter/material.dart';
import 'package:renda_clone/util/var/index.dart';

class ModeStore extends ChangeNotifier {
  // 実際に管理される商品のリスト
  String _mode = gameModes["A"];

  // 外側から直接変更されないように、getterのみ公開
  String get mode => _mode;

  // Storeに変更を要求するインターフェイス
  changeMode(String value) {
    // 取得できた商品のリストを追加する
    if (_mode == value) {
      return;
    }
    _mode = value;
    // 追加できたら、このStoreを購読しているウィジェットに通知する
    notifyListeners();
  }
}
