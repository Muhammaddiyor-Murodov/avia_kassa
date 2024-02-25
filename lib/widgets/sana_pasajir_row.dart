import 'package:avia_kassa_ui/widgets/sana_passajir.dart';
import 'package:flutter/material.dart';

class SanaPasajirRow extends StatelessWidget {
  const SanaPasajirRow({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SanaPassajir(
            size: size, icon: Icons.calendar_month_sharp, text: "27.04.2023"),
        SizedBox(
          width: 13,
        ),
        SanaPassajir(
          size: size,
          icon: Icons.group_sharp,
          text: "2 пассажира",
        ),
      ],
    );
  }
}
