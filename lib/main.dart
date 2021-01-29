import 'package:flutter/material.dart';
import "components/templetes/backgroundImage.dart";
import "components/templetes/header/top.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'renda_clone',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Stack(
          children: <Widget>[
            BackgroundImage(),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: Header(),
              body: Container(
                color: Colors.transparent,
              ),
            )
          ],
        ));
  }
}
