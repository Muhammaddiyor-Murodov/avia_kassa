import 'package:avia_kassa_ui/widgets/radio_button_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ToshkentBaku extends StatefulWidget {
  const ToshkentBaku({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<ToshkentBaku> createState() => _ToshkentBakuState();
}

class _ToshkentBakuState extends State<ToshkentBaku> {
  bool toshkent_baku_index = true;

  void configToshkentBaku() {
    setState(() {
      toshkent_baku_index = !toshkent_baku_index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      clipBehavior: Clip.hardEdge,
      width: double.infinity,
      height: widget.size.height * 0.14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Color.fromRGBO(244, 51, 60, 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RadioButtonIcon(
                icon: Icons.radio_button_checked,
                text: toshkent_baku_index ? "Ташкент" : "Баку",
                textSize: 23,
              ),
              Container(
                width: widget.size.width * 0.67,
                height: 1,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              RadioButtonIcon(
                icon: Icons.place_rounded,
                text: toshkent_baku_index ? "Баку" : "Ташкент",
                textSize: 23,
              ),
            ],
          ),
          InkWell(
            onTap: () {
              configToshkentBaku();
            },
            child: Container(
              height: widget.size.height * 0.07,
              width: widget.size.width * 0.12,
              child: Transform.rotate(
                angle: 9 * (3.141592653589793 / 18),
                child: Icon(
                  Icons.repeat_rounded,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(221, 39, 48, 1)),
            ),
          ),
        ],
      ),
    );
  }
}
