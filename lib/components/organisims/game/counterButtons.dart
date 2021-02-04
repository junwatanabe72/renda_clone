import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/components/atoms/Button.dart';
import 'package:renda_clone/stores/game.dart';
import 'package:renda_clone/stores/timer.dart';
import 'package:renda_clone/stores/user.dart';

class CounterButtons extends StatelessWidget {
  final double height;
  final double width;
  CounterButtons({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    final _user = context.read<UserStore>();
    final _timer = context.read<TimerStore>();
    final onTap =
        () => context.read<GameStore>().incrementCount(_timer, _user.user);

    return Container(
      height: this.height,
      width: this.width,
      child: Wrap(
          spacing: 5.0,
          runSpacing: 5.0,
          alignment: WrapAlignment.center,
          children: List(16)
              .map(
                (key) => Button(
                  text: "",
                  selected: true,
                  onTap: onTap,
                  height: this.height / 4.3,
                  width: this.width / 4.3,
                ),
              )
              .toList()),
    );
  }
}
