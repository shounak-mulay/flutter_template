import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/failures/weather_failure.dart';
import 'package:flutter_template/data/model/weather.dart';
import 'package:flutter_template/data/repository/weather_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@Injectable()
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final IWeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(WeatherState.inital());

  StreamSubscription<Either<WeatherFailure, KtList<Weather>>>
      _weatherStreamSubscription;

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    yield* event.map(
      watchWeatherForAllCities: _handleWatchWeather,
      weatherListLoaded: _handleWeatherLoaded,
    );
  }

  Stream<WeatherState> _handleWatchWeather(
    _WatchWeatherForAllCities event,
  ) async* {
    yield WeatherState.loading();
    await _weatherStreamSubscription?.cancel();
    _weatherStreamSubscription =
        weatherRepository.watchWeatherForAllCities().listen((weatherList) {
      add(WeatherEvent.weatherListLoaded(weatherList));
    });
  }

  Stream<WeatherState> _handleWeatherLoaded(_WeatherListLoaded event) async* {
    yield event.weatherList.fold(
      (weatherFailure) => WeatherState.failure(weatherFailure),
      (weatherList) => WeatherState.loaded(weatherList),
    );
  }

  @override
  Future<void> close() async{
    await _weatherStreamSubscription?.cancel();
    return super.close();
  }
}
