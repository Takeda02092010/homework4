import 'package:flutter/material.dart';

class  Stak extends StatelessWidget {
  const Stak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            height: 300,
            width: 500,
            color: Colors.blueGrey,
          ),
          Positioned(bottom: 20,
          right: 20,
          child: Container(
            height: 200,
            width: 300,
            color: Colors.grey,
          ),)
        ],
      ),
    );
  }
}