import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_failure.freezed.dart';

@freezed
abstract class WeatherFailure with _$WeatherFailure {
  const factory WeatherFailure.unknown(String message) = Unknown;
  const factory WeatherFailure.unableToFetch(String message) = UnableToFetch;
  const factory WeatherFailure.requestTimeOut(String message) = RequestTimeOut;
}