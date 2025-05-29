import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              debugPrint("Pressed");
            },
            onLongPress: () {
              print("Long pressed");
            },
            onHover: (value) {
              print("value");
            },
            onFocusChange: (value) => print("change"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.blueGrey,
              elevation: 10,
              shadowColor: Colors.blueAccent,
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0),
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8.0),
                ),
                side: BorderSide(color: Colors.blue.shade50, width: 10.0),
              ),
              fixedSize: const Size(200, 44),
            ),
            child: const Text("Press me"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("OutlinedButton"),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("TextButton"),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.ac_unit,
            ),
          ),
          IconButton.filled(
            onPressed: () {},
            color: Colors.amber,
            icon: const Icon(
              Icons.ac_unit,
            ),
          ),
          IconButton.outlined(
            onPressed: () {},
            icon: const Icon(
              Icons.ac_unit,
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: InkWell(
              onTap: () {
                print("Object");
              },
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
