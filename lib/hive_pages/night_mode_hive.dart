

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class NightModeHivePage extends StatefulWidget {
  const NightModeHivePage({super.key});

  @override
  State<NightModeHivePage> createState() => _NightModeHivePageState();
}

class _NightModeHivePageState extends State<NightModeHivePage> {
  late Box settingsBox;

  @override
  void initState() {
    super.initState();
    settingsBox = Hive.box('settings');
  }

  bool get isDarkMode => settingsBox.get('isDarkMode', defaultValue: false);

  void toggleTheme() {
    final newMode = !isDarkMode;
    settingsBox.put('isDarkMode', newMode);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          isDarkMode ? Colors.black : Colors.white, 
      appBar: AppBar(
        title: Text("Hive Dark Mode",style: TextStyle(color: isDarkMode ? Colors.white : Colors.black,)  ,),
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Text(
          isDarkMode ? "Dark Mode" : "Light Mode",
          style: TextStyle(
            fontSize: 24,
            color: isDarkMode ? Colors.white : Colors.black, 
          ),
        ),
      ),
    );
  }
}
