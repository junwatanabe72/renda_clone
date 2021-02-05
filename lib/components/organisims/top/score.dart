import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:renda_clone/models/user.dart';
import 'package:renda_clone/stores/user.dart';

class Score extends StatelessWidget {
  final String mode;
  Score({@required this.mode});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(this.mode,
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.normal,
              fontSize: 20,
              height: 1.0,
            )),
        Selector<UserStore, User>(
            selector: (context, userStore) => userStore.user,
            builder: (context, user, child) => switchMode(user, this.mode))
      ],
    ));
  }

  Widget switchMode(User user, String mode) {
    final scoreText =
        (dynamic number) => number == null ? "---" : number.toString();
    switch (mode) {
      case "10S":
        return Text(scoreText(user?.first),
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              height: 1.0,
            ));
        break;
      case "60S":
        return Text(scoreText(user?.second),
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              height: 1.0,
            ));
        break;
      default:
        return Text(scoreText(user?.third),
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              height: 1.0,
            ));
        break;
    }
  }
}
