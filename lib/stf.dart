// import 'package:flutter/material.dart';

// class Stf extends StatefulWidget {
//   const Stf({super.key});

//   @override
//   State<Stf> createState() => _StfState();
// }

// class _StfState extends State<Stf> {
//   int index = 0;

//   void changeColor(int i) {
//     setState(() {
//       index = i;
//     });
//   }

//   Color setColor(int i) {
//     if (index == i) {
//       return Colors.brown;
//     } else {
//       return Colors.grey;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//           child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         spacing: 20.0,
//         children: [
//           InkWell(
//             onTap: () {
//               changeIndex(0);
//             },
//           )
//         ],
//       )
//           //   Container(
//           //     // height: color,
//           //     // width: color,

//           //     // color: color,
//           //     // color.toString(),
//           //   ),
//           // ),
//           // floatingActionButton: Column(
//           //   children: [
//           //     FloatingActionButton(
//                 // onPressed: () {
//                 //   setState(() {
//                 //     // if (color == Colors.blueGrey) {
//                 //     //   color = Colors.pink.shade50;
//                 //     // } else {
//                 //     //   color = Colors.blueGrey;
//                 //     // }
//                 //     // color+=10;
//                 //   });
//                 // },
//           //       child: const Icon(Icons.add),
//           //     ),
//           //     FloatingActionButton(
//                 // onPressed: () {
//                 //   // if (color > 0) {
//                 //   //   setState(() {
//                 //   //     color-=10;
//                 //   //   });
//                 //   // }
//                 // },
//                 // child: const Icon(Icons.remove),
//           //     ),
//           //     FloatingActionButton(
//           //       onPressed: () {
//           //         setState(() {
//           //           //  color = 100;
//           //         });
//           //       },
//           //       child: const Icon(Icons.restart_alt),
//           //     ),
//           // ],
//           ),
//     );
//   }
// }
