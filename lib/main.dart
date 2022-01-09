import 'package:flutter/material.dart';
import 'package:flutter_codigo4_ui/pages/home_page.dart';
import 'package:flutter_codigo4_ui/pages/house_page.dart';
import 'package:flutter_codigo4_ui/pages/login1_page.dart';
import 'package:flutter_codigo4_ui/pages/login2_page.dart';
import 'package:flutter_codigo4_ui/pages/parkin_page.dart';
import 'package:flutter_codigo4_ui/pages/sport_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      home: HomePage(),
    );
  }
}


