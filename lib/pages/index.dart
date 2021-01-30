import 'package:flutter/material.dart';
import 'package:renda_clone/components/atoms/board.dart';
import 'package:renda_clone/components/atoms/button.dart';
import 'package:renda_clone/components/atoms/roll.dart';
import 'package:renda_clone/components/atoms/userName.dart';
import 'package:renda_clone/util/var/index.dart';
import "../components/templetes/header/top.dart";

class Top extends StatelessWidget {
  final List<Widget> _titleText = ["Renda", "Machine"]
      .map((value) => Text(value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          )))
      .toList();
  final List<Widget> _buttonList = gameModes.values
      .map((value) => Button(text: value, onTap: () => {}))
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: Header(),
        body: Center(
          child: Column(children: [
            ..._titleText,
            UserName(name: "user", onTap: () => {}),
            Padding(padding: EdgeInsets.all(5)),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[..._buttonList]),
            Padding(padding: EdgeInsets.all(5)),
            Button(text: "PLAY!", onTap: () => {}),
            Padding(padding: EdgeInsets.all(40)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Roll(),
                Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(children: [
                      Board(),
                      Align(
                          alignment: Alignment.bottomRight, child: Text("3020"))
                    ]))
              ],
            ),
            Padding(padding: EdgeInsets.all(30)),
          ]),
        ));
  }
}
