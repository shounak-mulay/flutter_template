import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_template/core/failures/city_failure.dart';
import 'package:flutter_template/core/failures/weather_failure.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/data/model/weather.dart';
import 'package:kt_dart/kt.dart';

abstract class IWeatherRepository {
  Future<Either<WeatherFailure, KtList<Weather>>> getWeatherForAllCities();
  Stream<Either<WeatherFailure, KtList<Weather>>> watchWeatherForAllCities();
  Future<Either<CityFailure, KtList<City>>> searchCities({@required String searchTerm});
  Stream<Either<CityFailure, KtList<City>>> watchSelectedCities();
  Future<void> selectCity(City city);
}