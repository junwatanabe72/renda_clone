import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:ui';
import 'package:renda_clone/components/atoms/board.dart';
import 'package:renda_clone/components/atoms/button.dart';
import 'package:renda_clone/components/atoms/roll.dart';
import 'package:renda_clone/components/atoms/selectButtons.dart';
import 'package:renda_clone/components/atoms/userName.dart';
import 'package:renda_clone/components/atoms/title.dart';
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
    final headerAreaHeight = maxHeight * (8 / 100);
    final titleAreaHeight = maxHeight * (20 / 100);
    final userNameAreaHeight = maxHeight * (5 / 100);
    final buttonAreaHeight = maxHeight * (8 / 100);
    final spaceAreaHeight = maxHeight * (15 / 100);
    final comAreaHeight = maxHeight * (14 / 100);

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: Header(
        height: headerAreaHeight,
        width: size.width,
      ),
      body: Column(children: [
        AppTitle(
          width: size.width / 2,
          height: titleAreaHeight,
          title: ["Renda", "Machine"],
        ),
        UserName(
            width: size.width / 1.7,
            height: userNameAreaHeight,
            name: "user",
            onTap: () => {}),
        Padding(padding: EdgeInsets.all(5)),
        SelectButtons(height: buttonAreaHeight, width: size.width / 1.1),
        Padding(padding: EdgeInsets.all(5)),
        Container(
            height: buttonAreaHeight,
            width: size.width / 1.1,
            child: Button(text: "PLAY!", onTap: () => {})),
        Container(
          height: spaceAreaHeight,
        ),
        Container(
            // height: footerAreaHeight,
            width: size.width / 1.05,
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
          height: comAreaHeight,
        )
      ]),
    );
  }
}
