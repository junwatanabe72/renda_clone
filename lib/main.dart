import 'package:flutter/material.dart';
import "components/templetes/backgroundImage.dart";

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
              appBar: AppBar(
                title: const Text("Standard"),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      // Pressed Action
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      // Pressed Action
                    },
                  ),
                ],
              ),
              body: Container(
                color: Colors.transparent,
              ),
            ),
          ],
        ));
  }
}
