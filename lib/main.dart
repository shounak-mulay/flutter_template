import 'package:flutter/material.dart';
import 'package:flutter_template/di/service_locator.dart';
import 'package:flutter_template/presentation/routes/route_generator.dart';
import 'package:flutter_template/presentation/routes/routes.dart';
import 'package:injectable/injectable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: Routes.weather,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
