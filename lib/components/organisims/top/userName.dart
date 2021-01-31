import 'package:flutter/material.dart';
import 'package:renda_clone/components/atoms/input.dart';

class UserName extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  UserName({@required this.name, @required this.width, @required this.height});

  @override
  Widget build(BuildContext context) {
    _showDialog() async {
      await showDialog<String>(
        context: context,
        barrierColor: Colors.black.withOpacity(0),
        child: new AlertDialog(
          content: Input(),
        ),
      );
    }

    return Container(
        height: this.height,
        width: this.width,
        child: GestureDetector(
          onTap: _showDialog,
          child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                  child:
                      Text(this.name, style: TextStyle(color: Colors.black)))),
        ));
  }
}
