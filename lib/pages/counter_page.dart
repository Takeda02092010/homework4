import 'package:flutter/material.dart';
import 'package:homework4/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          context.watch<CounterProvider>().count.toString(),
          style: TextStyle(
            fontSize: 40.0,
            color: textColor(context),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: context.read<CounterProvider>().increment, child: Icon(Icons.add),),
     
    );
  }

  Color textColor(BuildContext context) {
    if (context.read<CounterProvider>().count.isEven) {
      return Colors.black;
    } else {
      return Colors.blue;
    }
  }
}
