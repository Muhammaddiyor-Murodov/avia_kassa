import 'package:flutter/material.dart';

class NavigatorItem extends StatefulWidget {
  final String text;
  final Function fun;
  final int select;
  final int id;
  final IconData icon;
  const NavigatorItem({
    super.key,
    required this.text,
    required this.icon,
    required this.select,
    required this.id,
    required this.fun,
  });

  @override
  State<NavigatorItem> createState() => _NavigatorItemState();
}

class _NavigatorItemState extends State<NavigatorItem> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      splashColor: Colors.red.withOpacity(0.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
      onPressed: () {
        widget.fun(widget.id);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            color: widget.select == widget.id ? Colors.red : Colors.grey,
            size: 35,
          ),
          Text(
            widget.text,
            style: TextStyle(
              fontSize: 15,
              color: widget.select == widget.id ? Colors.red : Colors.grey,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
