import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final String mode;
  final double width;
  final Function onTap;
  Button({@required this.text, @required this.onTap, this.mode, this.width});

  @override
  Widget build(BuildContext context) {
    final bool _selected = this.mode == this.text;
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: this.width,
          decoration: BoxDecoration(
              color: _selected
                  ? Colors.red.withOpacity(0.2)
                  : Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: _selected
                    ? Colors.red.withOpacity(0.5)
                    : Colors.red.withOpacity(0.1),
                width: 2.0,
              )),
          child: Center(child: Text(this.text))),
    );
  }
}
