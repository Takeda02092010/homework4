
import 'package:flutter/material.dart';

class HomeworkCheckbox extends StatefulWidget {
  const HomeworkCheckbox({super.key});

  @override
  State<HomeworkCheckbox> createState() {
    return _HomeworkCheckboxState();
  }
}

class _HomeworkCheckboxState extends State<HomeworkCheckbox> {
  bool isAgree = false;
  String winner = "";
  String no = "No";
  String yes = "Yes";
  String machine = "Machine dependent";
  String non = "None of the mentioned";
  String result = "";

  void checkWinner() {
    if (winner == "") {
      result = "Is Python case sensitive when dealing with identifiers?";
    } else if (winner == no) {
      result = no;
    } else if (winner == yes) {
      result = yes;
    } else if (winner == machine) {
      result = machine;
    } else if (winner == non) {
      result = non;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const [
          CircleAvatar(radius: 30.0),
          SizedBox(width: 16.0),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Python",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Color.fromARGB(255, 32, 118, 35),
                    ),
                  ),
                  Text(
                    "#2",
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Color.fromARGB(255, 32, 118, 35),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                winner == ""
                    ? "Is Python case sensitive when dealing with identifiers?"
                    : result,
                style: const TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(height: 10),
              RadioListTile(
                value: no,
                groupValue: winner,
                title: const Text("No", style: TextStyle(color: Colors.white)),
                onChanged: (value) {
                  setState(() {
                    winner = value!;
                  });
                },
              ),
              RadioListTile(
                value: yes,
                groupValue: winner,
                title: const Text("Yes", style: TextStyle(color: Colors.white)),
                onChanged: (value) {
                  setState(() {
                    winner = value!;
                  });
                },
              ),
              RadioListTile(
                value: machine,
                groupValue: winner,
                title: const Text("Machine dependent",
                    style: TextStyle(color: Colors.white)),
                onChanged: (value) {
                  setState(() {
                    winner = value!;
                  });
                },
              ),
              RadioListTile(
                value: non,
                groupValue: winner,
                title: const Text("None of the mentioned",
                    style: TextStyle(color: Colors.white)),
                onChanged: (value) {
                  setState(() {
                    winner = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    checkWinner();
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 139, 196, 252),
                  foregroundColor: Colors.black,
                  fixedSize: const Size(200, 44),
                ),
                child: const Text("Submit", style: TextStyle(fontSize: 25.0)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Icon(
                      Icons.home_outlined,
                      color: Colors.black,
                      size: 45.0,
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Icon(
                      Icons.school,
                      color: Colors.black,
                      size: 45.0,
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.save,
                          color: Colors.black,
                          size: 45.0,
                        ),
                        Text("Save",style: TextStyle(fontSize: 35.0),),
                        SizedBox(width: 5.0,)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
