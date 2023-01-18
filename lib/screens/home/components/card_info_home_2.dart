import 'package:flutter/material.dart';
import 'package:tselku/themes.dart';

class CardInfoHome2 extends StatelessWidget {
  const CardInfoHome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, right: 16, left: 16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(children: [
            Image.asset(
              'assets/icons/icon-phone.png',
              width: 36,
            ),
            Image.asset(
              'assets/icons/icon-phone.png',
              width: 36,
            ),
          ]),
        ],
      ),
    );
  }
}
