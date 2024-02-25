
import 'package:flutter/material.dart';

class PoiskButton extends StatelessWidget {
  const PoiskButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17)),
      minWidth: size.width,
      color: Colors.white,
      onPressed: () {},
      child: Text(
        "Поиск",
        style: TextStyle(
          color: Colors.black,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
