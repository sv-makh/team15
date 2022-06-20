//@dart=2.9

import 'package:flutter/material.dart';
import 'package:team15/splashscreen.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        canvasColor: Colors.transparent,
      ),
      home: SplashScreenPage(),
    );
  }
}