import 'package:flutter/material.dart';
import 'package:team15/tab_navigator.dart';

//

class TabBarScreen extends StatefulWidget {
  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _selectedIndex = 0;

  final _navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

  void _onItemTapped(int tabIndex) {
    if (tabIndex == _selectedIndex) {
      _navigatorKeys[tabIndex]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() => _selectedIndex = tabIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async =>
        !await _navigatorKeys[_selectedIndex]!.currentState!.maybePop(),
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromRGBO(29, 233, 182, 1),
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
            selectedItemColor: const Color.fromRGBO(0, 181, 133, 1),
            unselectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        )
    );
  }

  Widget _buildOffstageNavigator(int tabIndex) {
    return Offstage(
      offstage: _selectedIndex != tabIndex,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabIndex]!,
        tabIndex: tabIndex,
      ),
    );
  }
}
