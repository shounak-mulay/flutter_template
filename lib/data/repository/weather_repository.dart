import 'dart:async';

import 'package:flutter_template/data/datasource/local/dao/city_dao_interface.dart';
import 'package:flutter_template/data/datasource/network/weather_api_service_interface.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/data/model/weather.dart';
import 'package:flutter_template/core/failures/weather_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter_template/data/repository/weather_repository_interface.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:moor_flutter/moor_flutter.dart';

@LazySingleton(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository {
  final ICityDao cityDao;
  final IWeatherApiService weatherApiService;

  const WeatherRepository(this.cityDao, this.weatherApiService);

  @override
  Future<Either<WeatherFailure, KtList<Weather>>>
      getWeatherForAllCities() async {
    try {
      List<City> cities = await cityDao.getAllCities();
      List<Weather> weatherForCities = await Stream.fromIterable(cities)
          .asyncMap((city) => weatherApiService.weatherForCity(city.woeid))
          .toList();
      return right(weatherForCities.toImmutableList());
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.CONNECT_TIMEOUT:
        case DioErrorType.SEND_TIMEOUT:
        case DioErrorType.RECEIVE_TIMEOUT:
          return left(WeatherFailure.requestTimeOut(e.message));
          break;
        case DioErrorType.RESPONSE:
          return left(WeatherFailure.unableToFetch(e.message));
        case DioErrorType.CANCEL:
        case DioErrorType.DEFAULT:
        default:
          return left(WeatherFailure.unknown(e.message));
      }
    } on MoorWrappedException catch (e) {
      return left(WeatherFailure.unableToFetch(e.message));
    }
  }

  @override
  Stream<Either<WeatherFailure, KtList<Weather>>> watchWeatherForAllCities() {
    return cityDao.watchAllCities().asyncMap((citiesList) async {
      List<Weather> weatherList = await Future.wait(citiesList.map(
        (city) async => await weatherApiService.weatherForCity(city.woeid),
      ));
      return right<WeatherFailure, KtList<Weather>>(
          weatherList.toImmutableList());
    }).onErrorReturnWith((e) {
      if (e is DioError) {
        switch (e.type) {
          case DioErrorType.CONNECT_TIMEOUT:
          case DioErrorType.SEND_TIMEOUT:
          case DioErrorType.RECEIVE_TIMEOUT:
            return left(WeatherFailure.requestTimeOut(e.message));
            break;
          case DioErrorType.RESPONSE:
            return left(WeatherFailure.unableToFetch(e.message));
          case DioErrorType.CANCEL:
          case DioErrorType.DEFAULT:
          default:
            return left(WeatherFailure.unknown(e.message));
        }
      } else {
        return left(WeatherFailure.unknown(e.message));
      }
    });
  }
}