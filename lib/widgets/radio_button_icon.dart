import 'package:flutter/material.dart';

class RadioButtonIcon extends StatelessWidget {
  final IconData icon;
  final double textSize;
  final String text;
  const RadioButtonIcon({
    super.key,
    required this.icon,
    required this.text,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 27,
          color: Colors.white,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          text,
          maxLines: 1,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: textSize * 0.9,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    );
  }
}
