import 'package:flutter/material.dart';

class Cliprrect extends StatelessWidget {
  const Cliprrect({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        child: Image(
        image:NetworkImage("https://picsum.photos/200"),
        height: 130,
        width: 130,),
        
      ),
    );
  }
}