
import 'package:flutter/material.dart';
import 'package:flutter_template/pages/cities/page.dart';
import 'package:flutter_template/pages/weather/page.dart';
import 'package:flutter_template/routes/routes.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.weather:
        return _route(WeatherPage());
      case Routes.cities:
        return _route(CitiesPage());
      default:
        return _route(WeatherPage());
    }
  }

  static Route<dynamic> _route(Widget page) {
    return MaterialPageRoute(builder: (context) {
      return page;
    },);
  }
}
