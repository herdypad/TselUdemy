import 'package:flutter/material.dart';
import 'package:tselku/themes.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Explore Page',
        style: mediumText15,
      )),
    );
  }
}
