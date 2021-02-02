import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:renda_clone/stores/timer.dart';

// class Clock extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final countText = context.select((TimerStore store) => getCountText(store));

//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Text("$countText", // <-- **カウンター時間の表示**
//             style: TextStyle(
//               fontFamily: 'PressStart2P',
//               fontSize: 36,
//             )),
//         SizedBox(height: 50),
//         Container(
//           padding: const EdgeInsets.all(30.0),
//           decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: LinearGradient(colors: <Color>[
//                 Colors.blue[300],
//                 Colors.blue[500],
//                 Colors.blue[700]
//               ])),
//           child: FlatButton(
//             onPressed: () {
//               context.read<TimerStore>().startTimer();
//             },
//             padding: EdgeInsets.all(20),
//             shape: CircleBorder(),
//             child: Text(
//               "Start",
//               style: TextStyle(
//                   fontFamily: 'PressStart2P',
//                   fontSize: 16,
//                   color: Colors.white),
//             ),
//           ),
//         )
//       ],
//     );
//   }

//   String getCountText(store) {
//     var hour = (store.count / (60 * 60)).floor();
//     var mod = store.count % (60 * 60);
//     var min = (mod / 60).floor();
//     var sec = mod % 60;
//     return "${twoDigits(hour)}:${twoDigits(min)}:${twoDigits(sec)}";
//   }

//   String twoDigits(int n) {
//     if (n >= 10) {
//       return "$n";
//     } else {
//       return "0$n";
//     }
//   }
// }
