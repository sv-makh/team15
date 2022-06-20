import 'package:flutter/material.dart';
import 'package:team15/tab_navigator.dart';
import 'package:team15/Decor/custom_colors.dart';
import 'package:team15/Decor/nav_bar_icons_icons.dart';

//чтобы навигация на вкладках осуществлялась независимо
//и BottomNavigationBar всегда оставалась на экране,
//на каждой вкладке сделан свой навигатор (со своим ключом GlobalKey)
//https://codewithandrea.com/articles/multiple-navigators-bottom-navigation-bar/

class TabBarScreen extends StatefulWidget {
  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  //индекс текущей открытой вкладки (первоначально экран с Категориями)
  int _selectedIndex = 0;

  //ключи для навигаторов вкладок
  final _navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

  //переход по вкладкам
  void _onItemTapped(int tabIndex) {
    if (tabIndex == _selectedIndex) {
      //переход на первый путь
      _navigatorKeys[tabIndex]!
          .currentState!
          .popUntil((route) => route.isFirst);
    } else {
      setState(() => _selectedIndex = tabIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        //при использовании кнопки назад выход из приложения
        //только если находимся на первом экране любой вкладки
        //(некуда больше переходить)
        onWillPop: () async =>
            !await _navigatorKeys[_selectedIndex]!.currentState!.maybePop(),
        child: Scaffold(
            body: Stack(
              children: <Widget>[
                //навигаторы для каждой вкладки
                _buildOffstageNavigator(0),
                _buildOffstageNavigator(1),
                _buildOffstageNavigator(2),
              ],
            ),
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                backgroundColor: lightMint,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      NavBarIcons.category,//Icons.widgets_outlined,
                      size: 64,
                    ),
                    label: 'Категории',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      NavBarIcons.case_icon,//Icons.work_outline,
                      size: 64,
                    ),
                    label: 'Лекции',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      NavBarIcons.user,//Icons.person_outline,
                      size: 64,
                    ),
                    label: 'Профиль',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: darkMint,
                unselectedItemColor: Colors.white,
                onTap: _onItemTapped,
              ),
            )));
  }

  //создание навигатора с ключом _navigatorKeys[tabIndex] для вкладки tabIndex
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
