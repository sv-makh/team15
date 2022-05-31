import 'package:flutter/material.dart';
import 'package:team15/Screens/categories.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String subCat = '/subcat';
  static const String curat = '/subcat/curat';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tabIndex});
  final GlobalKey<NavigatorState> navigatorKey;
  final int tabIndex;

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.root: (context) => Categories().categories(),
      TabNavigatorRoutes.subCat: (context) =>
    };
  }
}