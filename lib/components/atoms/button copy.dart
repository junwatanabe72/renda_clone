import 'package:flutter/material.dart';

// class Button extends StatelessWidget {
//   final String text;
//   final bool selected;
//   final double width;
//   final Function onTap;
//   Button(
//       {@required this.text,
//       @required this.onTap,
//       @required this.selected,
//       this.width});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       // onTapDown: onTap,
//       child: Container(
//           width: this.width,
//           decoration: BoxDecoration(
//               color: selected
//                   ? Colors.red.withOpacity(0.2)
//                   : Colors.red.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(5),
//               border: Border.all(
//                 color: selected
//                     ? Colors.red.withOpacity(0.5)
//                     : Colors.red.withOpacity(0.1),
//                 width: 2.0,
//               )),
//           child: Center(child: Text(this.text))),
//     );
//   }
// }
