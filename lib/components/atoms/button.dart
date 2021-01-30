import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final double width;
  final Function onTap;
  Button({@required this.text, @required this.onTap, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: this.width,
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.05),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: Colors.red.withOpacity(0.5),
                width: 2.0,
              )),
          child: Center(child: Text(this.text))),
    );
  }
}
