
import 'package:flutter/material.dart';

import 'cities_route.dart';
import 'weather_route.dart';

class Routes {
  static const String weather = '/';
  static const String cities = '/cities';
}

class RouteGenerator {
  // Return the appropriate route
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Arguments passed to the route if any
    switch (settings.name) {
      case Routes.weather:
        return _route(WeatherRoute());
      case Routes.cities:
        return _route(CitiesRoute());
      default:
        return _route(WeatherRoute());
    }
  }

  static Route<dynamic> _route(Widget page) {
    // Return a Material Page Route with the given page
    return MaterialPageRoute(builder: (context) {
      return page;
    },);
  }
}
