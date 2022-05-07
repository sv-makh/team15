import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'main.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new MyStatefulWidget(),
      backgroundColor: Color.fromRGBO(29, 233, 182, 1.0),
      title: new Text(
        'Добро пожаловать!',
        textAlign: TextAlign.center,
        textScaleFactor: 2,
      ),
      image: new Image.network('https://images.app.goo.gl/gj2DscmNumpFqZEg9'),
      loadingText: new Text("Загрузка"),
      photoSize: 110.0,
      loaderColor: Color.fromARGB(255, 3, 109, 82),
    );
  }
}
