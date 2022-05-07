import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'main.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new MyStatefulWidget(),
      backgroundColor: Color.fromRGBO(29, 233, 182, 1.0),
      title: new Text(
        'Share experience',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        textScaleFactor: 2,
      ),
      image: new Image.asset(
        'assets/images/logo.png',
        width: 400,
      ),
      loadingText: new Text(
        "Загрузка",
      ),
      photoSize: 110.0,
      loaderColor: Color.fromARGB(255, 3, 109, 82),
    );
  }
}
