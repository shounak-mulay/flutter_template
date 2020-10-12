
import 'package:flutter_template/di/service_locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt sl = GetIt.instance;
final getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(sl, environment: env);
}
