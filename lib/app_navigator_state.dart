import 'package:flutter/material.dart';

class NavigationService {
  static NavigationService instance = NavigationService();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> addPage<T extends Widget>(T widget) {
    Route route = MaterialPageRoute(builder: (context) => widget);
    return navigatorKey.currentState!.push(route);
  }

  void popPage({Object? status}) {
    navigatorKey.currentState!.pop(status);
  }
}
