import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List<List<String>> xo = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""],
  ];
  String winnerText = '';
  int turn = 0;
  void xoro(int row, int col) {
    if (xo[row][col] == "") {
      setState(() {
        if (turn % 2 == 0) {
          xo[row][col] = "X";
        } else {
          xo[row][col] = "O";
        }
        turn++;
        checkWinner();
      });
    }
  }


  void resetGame() {
    xo = [
      ["", "", ""],
      ["", "", ""],
      ["", "", ""],
    ];
    turn = 0;
    winnerText = "";
    setState(() {
      
    });
  }

  void checkWinner() {
    if ((xo[0][0] == "X" && xo[0][1] == "X" && xo[0][2] == "X") ||
        (xo[1][0] == "X" && xo[1][1] == "X" && xo[1][2] == "X") ||
        (xo[2][0] == "X" && xo[2][1] == "X" && xo[2][2] == "X") ||
        (xo[0][0] == "X" && xo[1][0] == "X" && xo[2][0] == "X") ||
        (xo[0][1] == "X" && xo[1][1] == "X" && xo[2][1] == "X") ||
        (xo[0][2] == "X" && xo[1][2] == "X" && xo[2][2] == "X") ||
        (xo[0][0] == "X" && xo[1][1] == "X" && xo[2][2] == "X") ||
        (xo[0][2] == "X" && xo[1][1] == "X" && xo[2][0] == "X")) {
      setState(() {
        winnerText = "X yutdi!";
      });
    } else if ((xo[0][0] == "O" && xo[0][1] == "O" && xo[0][2] == "O") ||
        (xo[1][0] == "O" && xo[1][1] == "O" && xo[1][2] == "O") ||
        (xo[2][0] == "O" && xo[2][1] == "O" && xo[2][2] == "O") ||
        (xo[0][0] == "O" && xo[1][0] == "O" && xo[2][0] == "O") ||
        (xo[0][1] == "O" && xo[1][1] == "O" && xo[2][1] == "O") ||
        (xo[0][2] == "O" && xo[1][2] == "O" && xo[2][2] == "O") ||
        (xo[0][0] == "O" && xo[1][1] == "O" && xo[2][2] == "O") ||
        (xo[0][2] == "O" && xo[1][1] == "O" && xo[2][0] == "O")) {
      setState(() {
        winnerText = "O yutdi!";
      });
    } else if (xo == "") {
      winnerText = "Durrang";
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 221, 235, 247),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              winnerText,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(0, 0);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[0][0],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    color: const Color.fromARGB(255, 221, 235, 247),
                    height: 150.0,
                    width: 4.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(0, 1);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[0][1],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    color: const Color.fromARGB(255, 221, 235, 247),
                    height: 150.0,
                    width: 4.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(0, 2);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[0][2],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              child: Container(
                color: const Color.fromARGB(255, 221, 235, 247),
                height: 4.0,
                width: 150.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(1, 0);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[1][0],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    color: const Color.fromARGB(255, 221, 235, 247),
                    height: 150.0,
                    width: 4.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(1, 1);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[1][1],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    color: const Color.fromARGB(255, 221, 235, 247),
                    height: 150.0,
                    width: 4.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(1, 2);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[1][2],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    color: const Color.fromARGB(255, 221, 235, 247),
                    height: 150.0,
                    width: 4.0,
                  ),
                ),
              ],
            ),
            InkWell(
              child: Container(
                color: const Color.fromARGB(255, 221, 235, 247),
                height: 4.0,
                width: 150.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(2, 0);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[2][0],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    color: const Color.fromARGB(255, 221, 235, 247),
                    height: 150.0,
                    width: 4.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(2, 1);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[2][1],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    color: const Color.fromARGB(255, 221, 235, 247),
                    height: 150.0,
                    width: 4.0,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      xoro(2, 2);
                    });
                  },
                  child: Container(
                    color: Colors.white,
                    height: 150.0,
                    width: 150.0,
                    child: Center(
                      child: Text(
                        xo[2][2],
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 140.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                resetGame();
              },
              child: Text("Restart"),
            ),
          ],
        ),
      ),
    );
  }
}
