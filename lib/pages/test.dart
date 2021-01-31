import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:io';
import 'package:renda_clone/components/atoms/input.dart';
import 'package:renda_clone/components/organisims/top/selectButtons.dart';
import 'package:renda_clone/stores/user.dart';
import "../components/templetes/header/top.dart";

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _user = Provider.of<UserStore>(context);
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    var maxHeight = size.height - padding.top - padding.bottom;

    // アプリ描画エリアの縦サイズを取得
    if (Platform.isAndroid) {
      maxHeight = size.height - padding.top - kToolbarHeight;
    } else if (Platform.isIOS) {
      maxHeight = size.height - padding.top - padding.bottom - 22;
    }
    final buttonHeight = maxHeight * (8 / 100);

    // widthSize

    final buttonWidth = size.width / 1.1;
    // heightSize
    final headerHeight = maxHeight * (8 / 100);
    final name = _user.user != null ? _user.user.name : "tesy";
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: Header(
        height: headerHeight,
      ),
      body: Column(children: [
        SelectButtons(width: buttonWidth, height: buttonHeight),
        Input(userName: name),
        Text(name)
      ]),
    );
  }
}
