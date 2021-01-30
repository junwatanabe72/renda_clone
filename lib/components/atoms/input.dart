import 'package:flutter/material.dart';
import 'package:renda_clone/util/hook/lengthLimit.dart';

class Input extends StatefulWidget {
  Input({Key key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20.0, color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          // focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
          hintText: 'Enter Nickname...',
          // contentPadding:
          //     const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          // focusedBorder: OutlineInputBorder(
          //   borderSide: new BorderSide(color: Colors.white),
          //   borderRadius: new BorderRadius.circular(25.7),
          // ),
          enabledBorder: UnderlineInputBorder(
            borderSide: new BorderSide(color: Colors.white),
            borderRadius: new BorderRadius.circular(25.7),
          ),
        ),
        inputFormatters: [
          LengthLimitingTextFieldFormatterFixed(5),
        ],
        onFieldSubmitted: (value) {
          print(value);
        },
      ),
    );
  }
}
