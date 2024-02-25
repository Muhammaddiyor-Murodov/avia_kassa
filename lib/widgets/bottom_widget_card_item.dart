import 'package:flutter/material.dart';

class BottomWidgetCardItem extends StatelessWidget {
  final String title;
  final String narx;
  const BottomWidgetCardItem({
    super.key,
    required this.title,
    required this.narx,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1,
          indent: 13,
          endIndent: 13,
        ),
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          trailing: Text(
            narx + ' >',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 18, color: Colors.red),
          ),
        ),
      ],
    );
  }
}
