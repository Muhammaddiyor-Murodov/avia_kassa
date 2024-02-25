import 'package:avia_kassa_ui/widgets/radio_button_icon.dart';
import 'package:flutter/material.dart';

class SanaPassajir extends StatelessWidget {
  final String text;
  final IconData icon;
  const SanaPassajir({
    super.key,
    required this.size,
    required this.text,
    required this.icon,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 15),
        height: size.height * 0.07,
        child: RadioButtonIcon(
          icon: icon,
          text: text,
          textSize: 18,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color.fromRGBO(244, 51, 60, 1),
        ),
      ),
    );
  }
}
