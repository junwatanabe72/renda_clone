import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/components/atoms/Button.dart';
import 'package:renda_clone/stores/game.dart';
import 'package:renda_clone/util/var/index.dart';

class SelectButtons extends StatelessWidget {
  final String mode;
  final double height;
  final double width;
  SelectButtons({this.mode, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: gameModes.keys
              .map((key) => Button(
                  text: gameModes[key],
                  selected: gameModes[key] == mode,
                  onTap: () => {
                        Provider.of<GameStore>(context, listen: false)
                            .changeGameMode(key),
                      },
                  width: this.width / 3.2))
              .toList()),
    );
  }
}
