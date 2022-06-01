// @dart=2.9

//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:team15/Screens/categories.dart';
import 'package:team15/Screens/lectures.dart';
import 'package:team15/Screens/profile.dart';
import 'package:team15/Screens/curators.dart';
import 'package:team15/splashscreen.dart';
import 'package:team15/tab_navigator.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  //static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //title: _title,
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
  /*var _currentTab = TabItem.categories;

  void _selectTab(TabItem tabItem) {
    setState(() {
      _currentTab = tabItem;
    });
  }*/

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final _navigatorKeys = {
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };

  static List<Widget> _widgetOptions = <Widget>[
    Categories(),//.categories(),
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
      body: Stack(
        children: <Widget>[
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
        ],
      ),
      /*Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(29, 233, 182, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Категории',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Лекции',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(0, 181, 133, 1),
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildOffstageNavigator(int tabIndex) {
    return Offstage(
      offstage: _selectedIndex != tabIndex,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabIndex],
        tabIndex: tabIndex,
      ),
    );
  }
}
