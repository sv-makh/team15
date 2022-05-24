// @dart=2.9

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:team15/Screens/categories.dart';
import 'package:team15/Screens/lectures.dart';
import 'package:team15/Screens/profile.dart';
import 'package:team15/Screens/curators.dart';
import 'package:team15/splashscreen.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  //const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Categories().categories(),
    //Curators().curators(),
    Lectures().lectures(),
    Profile().profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),*/
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Категории',
            backgroundColor: Color.fromRGBO(29, 233, 182, 1),
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Кураторы',
            backgroundColor: Color.fromRGBO(29, 233, 182, 1),
          ),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Лекции',
            backgroundColor: Color.fromRGBO(29, 233, 182, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
            backgroundColor: Color.fromRGBO(29, 233, 182, 1),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
