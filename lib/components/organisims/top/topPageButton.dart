import 'package:flutter/material.dart';
import 'package:renda_clone/components/atoms/statefullButton.dart';
import 'package:renda_clone/components/organisims/top/selectButtons.dart';
import 'package:renda_clone/pages/game.dart';

class TopPageButtons extends StatelessWidget {
  final Function changeGameMode;
  final double height;
  final double width;
  TopPageButtons(
      {this.changeGameMode, @required this.height, @required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SelectButtons(
          changeGameMode: this.changeGameMode,
          width: this.width,
          height: this.height),
      const Padding(padding: EdgeInsets.all(5)),
      Container(
          width: this.width,
          height: this.height,
          child: StatefullButton(
              text: "PLAY!",
              onTap: () => {Navigator.of(context).pushNamed(Game.routeName)}))
    ]);
  }
}
