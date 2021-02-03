import 'package:flutter/material.dart';
import 'package:renda_clone/components/organisims/top/board.dart';
import 'package:renda_clone/components/organisims/top/roll.dart';

// StatelessWidgetを継承
class Footer extends StatelessWidget {
  final double width;
  Footer({this.width});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Roll(),
            Container(
                width: width / 2,
                child: Column(children: [
                  Board(),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text("2021.1.1",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 10)))
                ]))
          ],
        ));
  }
}
