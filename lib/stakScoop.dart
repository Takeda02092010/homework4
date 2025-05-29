import 'package:flutter/material.dart';

class Stakscoop extends StatelessWidget {
  const Stakscoop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.network("https://picsum.photos/"),
            ],
          ),
          Row(),
          Text(
            "scoop",
            style: TextStyle(
              color: Colors.red,
              fontSize: 100,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 200,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text("order"),
          ),
          Container(
            alignment: Alignment.center,
            width: 200,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text("flavors"),
          ),
          Container(
            alignment: Alignment.center,
            width: 200,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text("contact"),
          ),
          SizedBox(
            height: 200,
          ),
          Text("sign in", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
