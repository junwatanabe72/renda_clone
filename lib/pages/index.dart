import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui';
import 'package:renda_clone/components/atoms/button.dart';
import 'package:renda_clone/components/organisims/top/board.dart';
import 'package:renda_clone/components/organisims/top/roll.dart';
import 'package:renda_clone/components/organisims/top/selectButtons.dart';
import 'package:renda_clone/components/organisims/top/title.dart';
import 'package:renda_clone/components/organisims/top/userName.dart';
import "../components/templetes/header/top.dart";

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    var maxHeight = size.height - padding.top - padding.bottom;

    // アプリ描画エリアの縦サイズを取得
    if (Platform.isAndroid) {
      maxHeight = size.height - padding.top - kToolbarHeight;
    } else if (Platform.isIOS) {
      maxHeight = size.height - padding.top - padding.bottom - 22;
    }

    // heightSize
    final headerHeight = maxHeight * (8 / 100);
    final titleHeight = maxHeight * (20 / 100);
    final userNameHeight = maxHeight * (5 / 100);
    final buttonHeight = maxHeight * (8 / 100);
    final spaceHeight = maxHeight * (15 / 100);
    final comHeight = maxHeight * (14 / 100);

    // widthSize
    final titleWidth = size.width / 2;
    final userNameWidth = size.width / 1.7;
    final buttonWidth = size.width / 1.1;
    final footerWidth = size.width / 1.05;

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: Header(
        height: headerHeight,
      ),
      body: Column(children: [
        AppTitle(
          width: titleWidth,
          height: titleHeight,
          title: ["Renda", "Machine"],
        ),
        UserName(
          width: userNameWidth,
          height: userNameHeight,
          name: "user",
        ),
        Padding(padding: EdgeInsets.all(5)),
        SelectButtons(width: buttonWidth, height: buttonHeight),
        Padding(padding: EdgeInsets.all(5)),
        Container(
            width: buttonWidth,
            height: buttonHeight,
            child: Button(text: "PLAY!", onTap: () => {})),
        Container(
          height: spaceHeight,
        ),
        Container(
            width: footerWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Roll(),
                Container(
                    width: size.width / 2,
                    child: Column(children: [
                      Board(),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text("2021.1.1",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 10)))
                    ]))
              ],
            )),
        Container(
          height: comHeight,
        )
      ]),
    );
  }
}
