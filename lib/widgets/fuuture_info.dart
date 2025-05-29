import 'package:flutter/material.dart';

class FuutureInfo extends StatelessWidget {
  const FuutureInfo({super.key, required this.id, required this.title, required this.body});
  final String id;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(id.toString(),),
        Text(title),
        Text(body),
      ],),
    );
  }
}
