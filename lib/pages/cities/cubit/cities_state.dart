part of 'cities_cubit.dart';

@freezed
abstract class CitiesState with _$CitiesState {
  const factory CitiesState.inital() = _Initial;
  const factory CitiesState.loading() = _Loading;
  const factory CitiesState.loaded(City city) = _Loaded;
}
