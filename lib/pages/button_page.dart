import 'package:flutter/material.dart';
import 'package:homework4/provider/button_provider.dart';
import 'package:provider/provider.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Rang Tanlash")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorButton(color: Colors.orange),
              ColorButton(color: Colors.red),
              ColorButton(color: Colors.pink),
            ],
          ),
          const SizedBox(height: 40),
          const SizedBox(height: 20),
          Container(
            width: 150,
            height: 150,
            color: colorProvider.selectedColor ?? Colors.transparent,
          ),
        ],
      ),
    );
  }

  String getColorName(Color color) {
    if (color == Colors.orange) {
      return "Sabzirang";
    } else if (color == Colors.red) {
      return "Qizil";
    } else if (color == Colors.pink) {
      return "Pushti";
    } else {
      return "Hech qanday rang tanlanmagan";
    }
  }
}

class ColorButton extends StatelessWidget {
  final Color color;

  const ColorButton({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorProvider>(
      context,
    );
    return ElevatedButton(
      onPressed: () {
        colorProvider.toggleColor(color);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: const Size(80, 80),
      ),
      child: null,
    );
  }
}
