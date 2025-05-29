import 'package:flutter/material.dart';

class DumaloqRasm extends StatelessWidget {
  const DumaloqRasm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: const Center(
        child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.red,
          foregroundColor: Colors.red,
          backgroundImage: NetworkImage("https://picsum.photos/200"),
          child: Icon(
            Icons.ac_unit,
            size:40,
          ),
        ),
      ),
    );
  }
}