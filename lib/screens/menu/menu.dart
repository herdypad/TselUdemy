import 'package:flutter/material.dart';
import 'package:tselku/themes.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Menu Page',
        style: mediumText15,
      )),
    );
  }
}
