part of 'cities_bloc.dart';

@freezed
abstract class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.searchCities(String searchTerm) = _SearchCities;
  const factory CitiesEvent.watchSelectedCities() = _WatchSelectedCities;
  const factory CitiesEvent.selectedCitiesLoaded(Either<CityFailure, KtList<City>> selectedCities) = _SelectedCitiesLoaded;
}