import 'package:avia_kassa_ui/widgets/bottom_widget.dart';
import 'package:avia_kassa_ui/widgets/navigator_item.dart';
import 'package:avia_kassa_ui/widgets/poisk_button.dart';
import 'package:avia_kassa_ui/widgets/sana_pasajir_row.dart';
import 'package:avia_kassa_ui/widgets/title_text.dart';
import 'package:avia_kassa_ui/widgets/toshkent_baku.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int navigatorIndex = 0;

  void navigatorButtom(int id) {
    setState(() {
      navigatorIndex = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(217, 36, 47, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  TitleText(),
                  SizedBox(height: 24),
                  ToshkentBaku(size: size),
                  SizedBox(height: 15),
                  SanaPasajirRow(size: size),
                  SizedBox(height: 13),
                  PoiskButton(size: size),
                  SizedBox(height: 15),
                ],
              ),
            ),
            BottomWidget(size: size)
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        height: size.height * 0.12,
        color: Colors.white,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigatorItem(
                  icon: Icons.search,
                  text: "Поиск",
                  select: navigatorIndex,
                  id: 0,
                  fun: navigatorButtom),
              NavigatorItem(
                  icon: Icons.local_airport,
                  text: "Рейсы",
                  select: navigatorIndex,
                  id: 1,
                  fun: navigatorButtom),
              NavigatorItem(
                  icon: Icons.ballot_rounded,
                  text: "Билеты",
                  select: navigatorIndex,
                  id: 2,
                  fun: navigatorButtom),
              NavigatorItem(
                  icon: Icons.person,
                  text: "Профиль",
                  select: navigatorIndex,
                  id: 3,
                  fun: navigatorButtom),
            ],
          ),
        ),
      ),
    );
  }
}
