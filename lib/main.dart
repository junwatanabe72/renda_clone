import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:renda_clone/stores/game.dart';
import 'package:renda_clone/stores/user.dart';
// import 'pages/game.dart';
import 'pages/index.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MultiProvider(
      // MultiProviderは複数のChangeNotifierProviderを格納できるProviderのこと
      // providersにList<ChangeNotifierProvider>を指定する
      providers: [
        // ChangeNotifierProviderはcreateにデリゲートを取り、この中でChangeNotifierを初期化して返す
        ChangeNotifierProvider<UserStore>(
          create: (context) => UserStore(),
        ),
        ChangeNotifierProvider<GameStore>(
          create: (context) => GameStore(),
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
      home: Top(),
    );
  }
}
