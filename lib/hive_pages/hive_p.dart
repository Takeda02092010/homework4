import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveP extends StatefulWidget {
  const HiveP({super.key});

  @override
  State<HiveP> createState() => _HivePState();
}

class _HivePState extends State<HiveP> {
  final Box counterBox = Hive.box("counterBox");
  int count = 0;

  void _increment() {
    setState(() {
      count++;
    });
    counterBox.put('count', count);
  }

  @override
  void initState() {
    super.initState();
    count = counterBox.get('count',defaultValue: 0);

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 40.0),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _increment();
      }),
    );
  }
}
