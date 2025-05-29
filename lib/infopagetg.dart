import 'package:flutter/material.dart';

class Infopagetg extends StatelessWidget {
  final String circleAvatar;
  final String name;

  const Infopagetg({super.key, required this.circleAvatar, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 51, 87),
        foregroundColor: Colors.white,
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(circleAvatar),
          ),
          title: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "last seen recently",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        actions: [
          Icon(Icons.phone),
          Icon(Icons.search),
          Icon(Icons.more_horiz),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
