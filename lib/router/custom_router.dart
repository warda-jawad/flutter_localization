import 'package:flutter/material.dart';
import 'package:localization/pages/about_us.dart';
import 'package:localization/pages/home_page/page/home_page.dart';
import 'package:localization/pages/not_found.dart';

const String homeRoute = "home";
const String aboutRoute = "about";
class CustomRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutUsPage());
      default:
        return MaterialPageRoute(builder: (_) => NotFoundPage());
    }
  }
}
