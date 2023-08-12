import 'package:flutter/material.dart';

import 'package:exampledonutapp/core/constants/constants.dart';

import '../pages/pages.dart';

class DonutBottomBarSelectionService extends ChangeNotifier {
  String? tabSelection = AppRoutes.main;

  void setTabSelection(String selection) {
    Utils.mainListNav.currentState?.pushReplacementNamed(selection);
    tabSelection = selection;
    notifyListeners();
  }
}

class AppRoutes {
  static const String main = "/main";
  static const String favorites = "/favorites";
  static const String shoppingcart = "/shoppingcart";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget page;

    switch (settings.name) {
      case AppRoutes.main:
        page = const DonutMainPage();
        break;
      case AppRoutes.favorites:
        page = const DonutFavorites();
        break;
      case AppRoutes.shoppingcart:
        page = const DonutShoppingCartPage();
        break;
      default:
        page = const Center(child: Text('Error Route'));
        break;
    }

    return PageRouteBuilder(
        pageBuilder: (_, __, ___) => page, transitionDuration: Duration.zero);
  }
}
