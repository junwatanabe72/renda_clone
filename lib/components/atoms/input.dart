import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/stores/user.dart';
import 'package:renda_clone/util/hook/lengthLimit.dart';

class Input extends StatefulWidget {
  final String userName;
  final Function closeDialog;
  Input({this.userName, this.closeDialog, Key key}) : super(key: key);

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
                  hintText: 'Enter Nickname...',
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
              RaisedButton(
                onPressed: () => {
                  _formKey.currentState.save(),
                  Provider.of<UserStore>(context, listen: false)
                      .createUser(_name),
                  FocusScope.of(context).unfocus(),
                  widget.closeDialog()
                },
                child: Text('done'),
              ),
              RaisedButton(
                onPressed: () {
                  _formKey.currentState.reset();
                  FocusScope.of(context).unfocus();
                  widget.closeDialog();
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                },
                child: Text('cancel'),
              ),
            ]));
  }
}
