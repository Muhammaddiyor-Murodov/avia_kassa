import 'package:avia_kassa_ui/widgets/bottom_widget_expand_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Color.fromRGBO(241, 244, 246, 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        width: size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Наши направления",
                  softWrap: true,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                  ),
                ),
                Text(
                  "смотреть все",
                  style: TextStyle(
                      fontSize: 16.2,
                      color: Colors.red,
                      fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    BottomWidgetExpandCard(title: "Алматы"),
                    SizedBox(height: 15),
                    BottomWidgetExpandCard(title: "Анталья"),
                    SizedBox(height: 15),
                    BottomWidgetExpandCard(title: "Астана"),
                    SizedBox(height: 15),
                    BottomWidgetExpandCard(title: "Астана")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
