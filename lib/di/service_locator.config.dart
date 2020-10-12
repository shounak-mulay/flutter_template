// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../data/datasource/local/dao/city_dao.dart';
import 'modules/dio_injection_module.dart';
import '../data/datasource/local/dao/city_dao_interface.dart';
import '../data/datasource/network/weather_api_service_interface.dart';
import '../data/repository/weather_repository_interface.dart';
import '../data/datasource/network/weather_api_service.dart';
import '../presentation/pages/weather/bloc/weather_bloc.dart';
import '../data/datasource/local/weather_database.dart';
import '../data/repository/weather_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final dioInjectionModule = _$DioInjectionModule();
  gh.lazySingleton<IWeatherApiService>(
      () => dioInjectionModule.weaatherApiService());
  gh.lazySingleton<WeatherDatabase>(() => WeatherDatabase());
  gh.lazySingleton<ICityDao>(() => CityDao(get<WeatherDatabase>()));
  gh.lazySingleton<IWeatherRepository>(
      () => WeatherRepository(get<ICityDao>(), get<IWeatherApiService>()));
  gh.factory<WeatherBloc>(() => WeatherBloc(get<IWeatherRepository>()));
  return get;
}

class _$DioInjectionModule extends DioInjectionModule {}
