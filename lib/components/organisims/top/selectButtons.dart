import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/components/atoms/button.dart';
import 'package:renda_clone/stores/mode.dart';
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
          children: gameModes.values
              .map((value) => Button(
                  text: value,
                  selected: value == mode,
                  onTap: () => {
                        Provider.of<ModeStore>(context, listen: false)
                            .changeMode(value),
                      },
                  width: this.width / 3.2))
              .toList()),
    );
  }
}
