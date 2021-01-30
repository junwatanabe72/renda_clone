import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  final String name;
  final Function onTap;
  UserName({@required this.name, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(child: Text(this.name))),
    );
  }
}
