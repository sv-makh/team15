// @dart=2.9

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:team15/Screens/tab_bar_screen.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: TabBarScreen(),
      backgroundColor: const Color.fromRGBO(29, 233, 182, 1.0),
      title: const Text(
        'Share experience',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        textScaleFactor: 2,
      ),
      image: Image.asset(
        'assets/images/logo.png',
        width: 400,
      ),
      loadingText: const Text(
        "Загрузка",
      ),
      photoSize: 110.0,
      loaderColor: const Color.fromARGB(255, 3, 109, 82),
    );
  }
}
