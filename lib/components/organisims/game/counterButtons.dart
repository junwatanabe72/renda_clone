import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/components/atoms/Button.dart';
import 'package:renda_clone/stores/game.dart';
import 'package:renda_clone/stores/timer.dart';
// import 'package:renda_clone/util/var/index.dart';

class CounterButtons extends StatelessWidget {
  final double height;
  final double width;
  CounterButtons({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    // final _game = context.read<GameStore>().game;
    // final _inPlay = _game.inPlay;
    // final _toggle = context.read<GameStore>().inPlayToggle();
    // final _time = context.read<GameStore>().game.time;
    // final _increment = context.read<GameStore>().incrementCount();
    // final bool _inPlay = context.watch<GameStore>().game.inPlay;
    final _timer = context.read<TimerStore>();
    // final onTap = context.read<GameStore>().game.inPlay
    //     ? () => context.read<GameStore>().incrementCount()
    //     : () => {
    //           context.read<GameStore>().startTimer(),
    //         };
    final onTap = () => context.read<GameStore>().incrementCount(_timer);

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
