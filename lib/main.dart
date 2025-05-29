import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:homework4/classes/post.dart';
import 'package:homework4/pages/button_page.dart';
import 'package:homework4/pages/counter_page.dart';
import 'package:homework4/provider/button_provider.dart';
import 'package:homework4/provider/counter_provider.dart';
import 'package:provider/provider.dart';

void main() async {
 
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(PostAdapter()); 

  await Hive.openBox('settings');
  await Hive.openBox('postBox');

  runApp(const MyApp());


  // await Hive.initFlutter();
  // await Hive.openBox('settings');
  // await Hive.openBox('postBox');

  // Hive.registerAdapter(PostAdapter());
   //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 83, 83, 175)),
        useMaterial3: true,
        fontFamily: GoogleFonts.rosarivo().fontFamily,
      ),
      home:ChangeNotifierProvider(create: (context)=>ColorProvider(),child: ButtonPage(),),
    );
  }
}
/*MultiProviders */


// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:homework4/hive_pages/night_mode_hive.dart';

// void main() async {
//   await Hive.initFlutter();
//   await Hive.openBox('settings');
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const NightModeHive();
//   }
// }
