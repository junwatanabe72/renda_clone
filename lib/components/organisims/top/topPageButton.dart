import 'package:flutter/material.dart';
import 'package:renda_clone/components/atoms/statefullButton.dart';
import 'package:renda_clone/components/organisims/top/selectButtons.dart';

class TopPageButtons extends StatelessWidget {
  final String mode;
  final double height;
  final double width;
  TopPageButtons(
      {@required this.mode, @required this.height, @required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SelectButtons(mode: this.mode, width: this.width, height: this.height),
      const Padding(padding: EdgeInsets.all(5)),
      Container(
          width: this.width,
          height: this.height,
          child: StatefullButton(
              text: "PLAY!",
              onTap: () => {Navigator.of(context).pushNamed("/game")}))
    ]);
  }
}
