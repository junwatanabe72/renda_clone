import 'package:flutter/material.dart';
import 'dart:io';
import 'package:provider/provider.dart';
import 'package:renda_clone/components/atoms/space.dart';
import 'package:renda_clone/components/organisims/game/counterButtons.dart';
import 'package:renda_clone/components/templetes/backgroundImage.dart';
import 'package:renda_clone/stores/game.dart';
import 'package:renda_clone/stores/timer.dart';
// import 'package:renda_clone/stores/user.dart';
import "../components/templetes/header/top.dart";

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final _user = Provider.of<UserStore>(context);
    final _game = Provider.of<GameStore>(context);
    final _timer = Provider.of<TimerStore>(context);
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
    final headerHeight = maxHeight * (10 / 100);
    // final textHeight = maxHeight * (20 / 100);
    final buttonsHeight = maxHeight * (75 / 100);
    final comHeight = maxHeight * (10 / 100);

    final gameWidth = size.width / 1.05;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: BackgroundImage(
          bodyWidget: Column(children: [
            Header(
              height: headerHeight,
            ),
            Text(_timer.timeCount.toString()),
            Text(
              _game.game.count.toString(),
              style: TextStyle(fontSize: 20.0, color: Colors.cyan),
            ),
            _timer.timeCount != _game.game.time
                ? CounterButtons(width: gameWidth, height: buttonsHeight)
                : Space(
                    height: comHeight,
                  ),
            Space(
              height: comHeight,
            )
          ]),
        ));
  }
}
