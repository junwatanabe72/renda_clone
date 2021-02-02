import 'package:flutter/material.dart';

const title = "Leaderboard";

class Board extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.05),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.red.withOpacity(0.5),
            width: 2.0,
          )),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(title,
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              height: 1.0,
            )),
        ...new List.generate(
            10,
            (i) => Text("${i + 1}.user: 20.23s",
                style: TextStyle(
                  height: 1.0,
                ))),
      ]),
    );
  }
}
