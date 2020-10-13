part of 'cities_bloc.dart';

@freezed
abstract class CitiesState with _$CitiesState {
  const factory CitiesState.initial() = _Initial;
  const factory CitiesState.loading() = _Loading;
  const factory CitiesState.loaded(KtList<City> cityList, {KtList<City> selectedCities}) = _Loaded;
  const factory CitiesState.failure(CityFailure failure) = _Failure;
}
