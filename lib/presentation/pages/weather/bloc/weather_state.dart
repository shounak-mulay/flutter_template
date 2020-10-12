part of 'weather_bloc.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState.inital() = _Initial;
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.loaded(KtList<Weather> weatherList) = _Loaded;
  const factory WeatherState.failure(WeatherFailure failure) = _Failure;
}
