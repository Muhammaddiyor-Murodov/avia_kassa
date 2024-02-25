import 'package:avia_kassa_ui/app_strings/app_strings.dart';
import 'package:avia_kassa_ui/view/home.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      home: Home(),
    );
  }
}