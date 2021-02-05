import 'package:flutter/material.dart';
import 'package:renda_clone/components/atoms/input.dart';

class UserName extends StatelessWidget {
  final String name;
  final Function createUser;
  final double height;
  final double width;
  UserName(
      {@required this.name,
      this.createUser,
      @required this.width,
      @required this.height});

  @override
  Widget build(BuildContext context) {
    final Widget textWidget = this.name != ""
        ? Text(this.name, style: TextStyle(color: Colors.black))
        : Text('Enter Nickname...', style: TextStyle(color: Colors.grey));
    _showDialog() async {
      await showDialog<String>(
        context: context,
        barrierColor: Colors.transparent,
        child: new AlertDialog(
          titlePadding: EdgeInsets.all(20),
          // contentPadding: EdgeInsets.all(20),
          content: Input(
            userName: this.name,
            onChange: (String value) => this.createUser(value),
            closeDialog: () => Navigator.pop(context),
          ),
        ),
      );
    }

    return Container(
        height: this.height,
        width: this.width,
        child: GestureDetector(
            onTap: _showDialog,
            child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(child: textWidget))));
  }
}
