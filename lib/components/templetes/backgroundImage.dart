import 'package:flutter/material.dart';

// StatelessWidgetを継承
class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('images/lake.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
