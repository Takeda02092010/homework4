import 'package:flutter/material.dart';
import 'package:homework4/login.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login(),),
            );
             Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login(),),
            );
             Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (context) => Login(),),
            (route) => false,
            );
      }),
    );
  }
}
