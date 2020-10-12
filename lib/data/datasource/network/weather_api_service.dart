import 'package:flutter_template/data/datasource/network/weather_api_service_interface.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/data/model/weather.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: 'https://www.metaweather.com/api/location/')
abstract class WeatherAPIService implements IWeatherApiService{
  factory WeatherAPIService(Dio dio, {String baseUrl}) = _WeatherAPIService;

  @GET('/search')
  Future<List<City>> searchCities(@Query('query') String city);

  @GET('/{id}')
  Future<Weather> weatherForCity(@Path('id') int id);
}
