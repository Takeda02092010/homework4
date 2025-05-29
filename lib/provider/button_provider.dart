

import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color? _selectedColor;

  Color? get selectedColor => _selectedColor;

  String get colorName {
    if (_selectedColor == Colors.red) return "Qizil";
    if (_selectedColor == Colors.yellow) return "Sariq";
    if (_selectedColor == Colors.green) return "Yashil";
    return "Noma'lum";
  }

  void toggleColor(Color color) {
    if (_selectedColor == color) {
      _selectedColor = null; 
    } else {
      _selectedColor = color; 
    }
    notifyListeners(); 
  }
}
