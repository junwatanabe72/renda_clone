import 'package:flutter/material.dart';
import 'package:renda_clone/stores/user.dart';
import "components/templetes/backgroundImage.dart";
// import 'pages/index.dart';
import 'pages/test.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      // MultiProviderは複数のChangeNotifierProviderを格納できるProviderのこと
      // providersにList<ChangeNotifierProvider>を指定する
      providers: [
        // ChangeNotifierProviderはcreateにデリゲートを取り、この中でChangeNotifierを初期化して返す
        ChangeNotifierProvider(
          create: (context) => UserStore(),
        )
      ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'renda_clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.white,
          ),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Stack(
          children: <Widget>[
            BackgroundImage(),
            Test(),
          ],
        ));
  }
}
