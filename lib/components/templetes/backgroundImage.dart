import 'package:flutter/material.dart';

// StatelessWidgetを継承
class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Image.asset('images/lake.jpg',
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover
    );
  }
}
