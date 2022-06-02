import 'package:flutter/material.dart';
import 'package:team15/Screens/categories.dart';
import 'package:team15/Screens/subcategories.dart';
import 'package:team15/Screens/curators.dart';
import 'package:team15/Screens/lectures.dart';
import 'package:team15/Screens/profile.dart';

//класс с именами путей для вкладки Категории
class TabNavigatorRoutesCat {
  static const String root = '/';
  static const String subCat = '/subcat';
  static const String curat = '/subcat/curat';
}

//класс с именами путей для вкладки Лекции
class TabNavigatorRoutesLect {
  static const String root = '/';
}

//класс с именами путей для вкладки Профиль пользователя
class TabNavigatorRoutesProfile {
  static const String root = '/';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabIndex});
  //ключ навигатора
  final GlobalKey<NavigatorState> navigatorKey;
  //индекс вкладки, на которой находится навигатор
  final int tabIndex;

  //функция перехода с вкладки Категории в подкатегорию
  void _pushSubCat(BuildContext context, {int catIndex: 0}) {
    var routeBuilders = _routeBuildersCat(context, catIndex: catIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutesCat.subCat]!(context),
      )
    );
  }

  //функция перехода с подкатегории к кураторам
  void _pushCurat(BuildContext context, {int catIndex: 0, int subIndex: 0}) {
    var routeBuilders = _routeBuildersCat(context, catIndex: catIndex, subIndex: subIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutesCat.curat]!(context),
      )
    );
  }

  //экраны для путей вкладки Категории
  Map<String, WidgetBuilder> _routeBuildersCat(BuildContext context,
  {int catIndex: 0, int subIndex: 0}) {
    return {
      TabNavigatorRoutesCat.root: (context) => Categories(
        onPush: (catIndex) => _pushSubCat(context, catIndex: catIndex),
      ),
      TabNavigatorRoutesCat.subCat: (context) => SubCat(catIndex),
      TabNavigatorRoutesCat.curat: (context) => Curators(catIndex, subIndex),
    };
  }

  //экраны для путей вкладки Лекции
  Map<String, WidgetBuilder> _routeBuildersLect(BuildContext context) {
    return {
      TabNavigatorRoutesLect.root: (context) => Lectures(),
    };
  }

  //экраны для путей вкладки Профиль пользователя
  Map<String, WidgetBuilder> _routeBuildersProfile(BuildContext context) {
    return {
      TabNavigatorRoutesProfile.root: (context) => Profile(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = [
      _routeBuildersCat(context),
      _routeBuildersLect(context),
      _routeBuildersProfile(context),
    ];

    final TabNavigatorRoutes = [
      TabNavigatorRoutesCat.root,
      TabNavigatorRoutesLect.root,
      TabNavigatorRoutesProfile.root,
    ];

    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes[tabIndex],
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[tabIndex][routeSettings.name]!(context),
        );
      },
    );
  }
}