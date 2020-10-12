import 'package:flutter_template/data/datasource/network/weather_api_service.dart';
import 'package:flutter_template/data/datasource/network/weather_api_service_interface.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class DioInjectionModule {
  @LazySingleton(as: IWeatherApiService)
  WeatherAPIService weaatherApiService() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    final client = WeatherAPIService(dio);
    return client;
  }
}