import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/failures/weather_failure.dart';
import 'package:flutter_template/data/model/weather.dart';
import 'package:kt_dart/kt.dart';

abstract class IWeatherRepository {
  Future<Either<WeatherFailure, KtList<Weather>>> getWeatherForAllCities();
  Stream<Either<WeatherFailure, KtList<Weather>>> watchWeatherForAllCities();
}