import 'package:flutter/material.dart';
import 'package:renda_clone/util/hook/lengthLimit.dart';

const hintText = 'Enter Nickname...';
const submitText = "done";
const cancelText = "cancel";

class Input extends StatefulWidget {
  final String userName;
  final Function closeDialog;
  final Function onChange;
  Input({this.userName, this.onChange, this.closeDialog, Key key})
      : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  final _formKey = GlobalKey<FormState>();

  String _name;
  void _updateName(String name) {
    setState(() {
      _name = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                  child: TextFormField(
                autofocus: true,
                initialValue: widget.userName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                  hintText: hintText,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: new BorderSide(color: Colors.white),
                    borderRadius: new BorderRadius.circular(25.7),
                  ),
                ),
                inputFormatters: [
                  LengthLimitingTextFieldFormatterFixed(5),
                ],
                onSaved: (value) {
                  _updateName(value);
                },
              )),
              SizedBox(
                  width: 60,
                  height: 30,
                  child: OutlinedButton(
                    child: const Text(submitText,
                        style: TextStyle(
                          fontSize: 8,
                        )),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      shape: const StadiumBorder(),
                      side: const BorderSide(color: Colors.blue),
                    ),
                    onPressed: () => {
                      _formKey.currentState.save(),
                      widget.onChange(_name),
                      FocusScope.of(context).unfocus(),
                      widget.closeDialog()
                    },
                  )),
              SizedBox(
                  width: 60,
                  height: 30,
                  child: OutlinedButton(
                    child: const Text(cancelText,
                        style: TextStyle(
                          fontSize: 8,
                        )),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      shape: const StadiumBorder(),
                      side: const BorderSide(color: Colors.red),
                    ),
                    onPressed: () => {
                      _formKey.currentState.reset(),
                      FocusScope.of(context).unfocus(),
                      widget.closeDialog(),
                    },
                  )),
            ]));
  }
}
