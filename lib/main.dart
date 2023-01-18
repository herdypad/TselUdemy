import 'package:flutter/material.dart';
import 'package:tselku/screens/BottomNavBar.dart';
import 'package:tselku/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Telkomsel Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(selectedItemColor: redColor),
      ),
      home: BottomNavBar(),
    );
  }
}
