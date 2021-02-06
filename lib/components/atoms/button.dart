import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool selected;
  final double width;
  final double height;
  final Function onTap;
  final Color color;
  Button(
      {this.text = "",
      this.color = Colors.red,
      @required this.onTap,
      @required this.selected,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // onTapDown: onTap,
      child: Container(
          width: this.width,
          height: this.height,
          decoration: BoxDecoration(
              color: selected
                  ? this.color.withOpacity(0.2)
                  : this.color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: selected
                    ? this.color.withOpacity(0.5)
                    : this.color.withOpacity(0.1),
                width: 2.0,
              )),
          child: Center(child: Text(this.text))),
    );
  }
}
