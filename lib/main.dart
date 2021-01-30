import 'package:flutter/material.dart';
import "components/templetes/backgroundImage.dart";
import 'pages/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'renda_clone',
        theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.white,
            // displayColor: Colors.blue,
          ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Stack(
          children: <Widget>[
            BackgroundImage(),
            Top(),
          ],
        ));
  }
}
