import 'dart:math';

import 'package:flutter/material.dart';

class Stf2 extends StatefulWidget {
  const Stf2({super.key});

  @override
  State<Stf2> createState() => _Stf2State();
}

class _Stf2State extends State<Stf2> {
//   Color color1 = Colors.black;
//   Color color2 = Colors.black;
//   Color color3 = Colors.black;
  String text = "";
  String text1 = "";
  String userChoice = "";
  String computerChoice = "";
  String result = "";

  void checkWinner() {
    print(userChoice);
    print(computerChoice);
    print(userChoice == computerChoice);
    if (userChoice == computerChoice) {
      result = "Durrang 🤝";
    } else if ((userChoice == "✊" && computerChoice == "✂️") ||
        (userChoice == "✂️" && computerChoice == "✋") ||
        (userChoice == "✋" && computerChoice == "✊")) {
      result = "Siz yutdingiz! 🎉";
    } else {
      result = "Kompyuter yutdi! 😢";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 50.0),
            ),
            Text(
              computerChoice,
              style: const TextStyle(fontSize: 50.0),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            result,
            style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          const Text(
            "YOU",
            style: TextStyle(fontSize: 50.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey,
                  child: const Text(
                    "✊",
                    style: TextStyle(fontSize: 85),
                  ),
                ),
                onTap: () {
                  setState(() {
                    text = "✊";
                    userChoice = "✊";
                    List<String> choices = ["✊", "✋", "✂️"];
                    computerChoice = choices[Random().nextInt(3)];
                    checkWinner();
                  });
                },
              ),
              const SizedBox(
                width: 30.0,
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey,
                  child: const Text(
                    "✋",
                    style: TextStyle(fontSize: 85),
                  ),
                ),
                onTap: () {
                  setState(() {
                    text = "✋";
                    userChoice = "✋";
                    List<String> choices = ["✊", "✋", "✂️"];
                    computerChoice = choices[Random().nextInt(3)];
                    checkWinner();
                  });
                },
              ),
              const SizedBox(
                width: 30.0,
              ),
              InkWell(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueGrey,
                  child: const Text(
                    "✂️",
                    style: TextStyle(fontSize: 85),
                  ),
                ),
                onTap: () {
                  setState(() {
                    text = "✂️";
                    userChoice = "✂️";
                    List<String> choices = ["✊", "✋", "✂️"];
                    computerChoice = choices[Random().nextInt(3)];
                    checkWinner();
                  });
                },
              ),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );

    //       const SizedBox(height: 30.0,),
    //       InkWell(
    //         child: Container(
    //           height: 100,
    //           width: 100,
    //           color: color2,
    //         ),
    //         onTap: () {
    //           setState(() {
    //             if (color2 == Colors.black) {
    //               color2 = Colors.pink.shade50;
    //             } else {
    //               color2 = Colors.black;
    //             }
    //           });
    //         },
    //       ),
    //       const SizedBox(height: 30.0,),
    //       InkWell(
    //         child: Container(
    //           height: 100,
    //           width: 100,
    //           color: color3,
    //         ),
    //         onTap: () {
    //           setState(() {
    //             if (color3 == Colors.black) {
    //               color3 = Colors.pink.shade50;
    //             } else {
    //               color3 = Colors.black;
    //             }
    //           });
    //         },
    //       )
    //     ],
    //   ),
  }
}
