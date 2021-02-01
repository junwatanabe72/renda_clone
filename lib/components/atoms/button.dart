import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String text;
  final bool selected;
  final double width;
  final Function onTap;
  Button(
      {@required this.text,
      @required this.onTap,
      @required this.selected,
      this.width});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _active = true;
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: widget.onTap,
      onTapUp: (TapUpDetails tapUpDetails) => {_handleTap()},
      onTapDown: (TapDownDetails tapDownDetails) => {_handleTap()},
      // onTapCancel: () => {_handleTap()},
      child: Container(
          width: widget.width,
          decoration: BoxDecoration(
              color: _active
                  ? Colors.red.withOpacity(0.2)
                  : Colors.red.withOpacity(0.1),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: widget.selected
                    ? Colors.red.withOpacity(0.5)
                    : Colors.red.withOpacity(0.1),
                width: 2.0,
              )),
          child: Center(child: Text(widget.text))),
    );
  }
}
