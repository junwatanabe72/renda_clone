import 'package:flutter/material.dart';
import 'package:renda_clone/components/atoms/button.dart';
import 'package:renda_clone/util/var/index.dart';

class SelectButtons extends StatelessWidget {
  final double height;
  final double width;
  SelectButtons({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: gameModes.values
              .map((value) =>
                  Button(text: value, onTap: () => {}, width: this.width / 3.2))
              .toList()),
    );
  }
}
