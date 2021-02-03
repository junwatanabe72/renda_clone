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
                style: TextStyle(fontSize: 20.0, color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.grey),
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
              ElevatedButton(
                onPressed: () => {
                  _formKey.currentState.save(),
                  widget.onChange(_name),
                  FocusScope.of(context).unfocus(),
                  widget.closeDialog()
                },
                child: const Text(submitText),
              ),
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState.reset();
                  FocusScope.of(context).unfocus();
                  widget.closeDialog();
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                },
                child: const Text(cancelText),
              ),
            ]));
  }
}
