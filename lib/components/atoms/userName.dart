import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  final String name;
  final Function onTap;
  final double height;
  final double width;
  UserName(
      {@required this.name,
      @required this.onTap,
      @required this.width,
      @required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.height,
        width: this.width,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text(this.name))),
        ));
  }
}
