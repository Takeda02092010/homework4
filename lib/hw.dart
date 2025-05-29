import 'package:flutter/material.dart';

class Hw extends StatelessWidget {
  const Hw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 49, 65),
      ),
      body: Center(
        child: SizedBox(
          width: 720,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 700,
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.blueGrey,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 700,
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 150,
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 150,
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 150,
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 150,
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 200,
                    width: 400,
                    margin: const EdgeInsets.all(10.0),
                    color: Colors.blueGrey,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 60,
                        width: 280,
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.blueGrey,
                      ),
                      Container(
                        height: 100,
                        width: 280,
                        margin: const EdgeInsets.all(10.0),
                        color: Colors.blueGrey,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 700,
                margin: const EdgeInsets.all(10.0),
                color: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
