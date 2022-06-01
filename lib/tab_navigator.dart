import 'package:flutter/material.dart';
import 'package:team15/Screens/categories.dart';
import 'package:team15/Screens/subcategories.dart';
import 'package:team15/Screens/curators.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String subCat = '/subcat';
  static const String curat = '/subcat/curat';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabIndex});
  final GlobalKey<NavigatorState> navigatorKey;
  final int tabIndex;

  void _pushSubCat(BuildContext context, {int catIndex: 0}) {
    var routeBuilders = _routeBuilders(context, catIndex: catIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutes.subCat]!(context),
      )
    );
  }

  void _pushCurat(BuildContext context, {int catIndex: 0, int subIndex: 0}) {
    var routeBuilders = _routeBuilders(context, catIndex: catIndex, subIndex: subIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutes.curat]!(context),
      )
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
  {int catIndex: 0, int subIndex: 0}) {
    return {
      TabNavigatorRoutes.root: (context) => Categories(
        onPush: (catIndex) => _pushSubCat(context, catIndex: catIndex),
      ),
      TabNavigatorRoutes.subCat: (context) => SubCat(catIndex),
      TabNavigatorRoutes.curat: (context) => Curators(catIndex, subIndex),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name]!(context),
        );
      },
    );
  }
}