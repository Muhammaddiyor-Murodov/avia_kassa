
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Надежные и быстрые перелеты по Средней Азии и странам СНГ.",
      style: TextStyle(
        height: 0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 22,
      ),
    );
  }
}
