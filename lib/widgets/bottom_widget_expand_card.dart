import 'package:avia_kassa_ui/widgets/bottom_widget_card_item.dart';
import 'package:flutter/material.dart';

class BottomWidgetExpandCard extends StatelessWidget {
  final String title;
  const BottomWidgetExpandCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
      ),
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
        ),
        children: [
          BottomWidgetCardItem(
            title: "Алмата - Уфа",
            narx: "8 649 ₽",
          ),
          BottomWidgetCardItem(
            title: "Алмата - Екатеринбург",
            narx: "11649 ₽",
          ),
          BottomWidgetCardItem(
            title: "Алмата - Казаны",
            narx: "10 649 ₽",
          ),
        ],
      ),
    );
  }
}
