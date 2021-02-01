import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final double height;
  final double width;
  Space({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
    );
  }
}
