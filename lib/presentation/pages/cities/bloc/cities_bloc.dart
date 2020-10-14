import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/failures/city_failure.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/data/repository/weather_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

part 'cities_event.dart';
part 'cities_state.dart';
part 'cities_bloc.freezed.dart';

@Injectable()
class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final IWeatherRepository weatherRepository;

  CitiesBloc(this.weatherRepository) : super(const CitiesState.initial());

  StreamSubscription<Either<CityFailure, KtList<City>>>
      _selectedCitiesStreamSubscription;

  @override
  Stream<Transition<CitiesEvent, CitiesState>> transformEvents(
      events, transitionFn) {
    return events
        .debounceTime(const Duration(milliseconds: 500))
        .switchMap(transitionFn);
  }

  @override
  Stream<CitiesState> mapEventToState(
    CitiesEvent event,
  ) async* {
    yield* event.map(
      searchCities: _handleSearchCities,
      watchSelectedCities: _handleWatchSelectedCities,
      selectedCitiesLoaded: _handleSelectedCitiesLoaded,
      selectCity: _handleSelectCity,
    );
  }

  Stream<CitiesState> _handleSearchCities(_SearchCities event) async* {
    yield const CitiesState.loading();
    if (event.searchTerm.isEmpty) {
      yield const CitiesState.initial();
    } else {
      final Either<CityFailure, KtList<City>> citiesResult =
          await weatherRepository.searchCities(searchTerm: event.searchTerm);
      yield citiesResult.fold(
        (failure) => CitiesState.failure(failure),
        (citiesList) => CitiesState.loaded(citiesList),
      );
    }
  }

  Stream<CitiesState> _handleWatchSelectedCities(
      _WatchSelectedCities event) async* {
    _selectedCitiesStreamSubscription?.cancel();
    _selectedCitiesStreamSubscription =
        weatherRepository.watchSelectedCities().listen((event) {
      add(CitiesEvent.selectedCitiesLoaded(event));
    });
  }

  Stream<CitiesState> _handleSelectedCitiesLoaded(
      _SelectedCitiesLoaded event) async* {
    yield event.selectedCities.fold(
      (failure) => CitiesState.failure(failure),
      (selectedCities) => CitiesState.selectedLoaded(selectedCities),
    );
  }

  Stream<CitiesState>  _handleSelectCity(_SelectCity event) async* {
    yield CitiesState.selectingCity(event.city);
    await weatherRepository.selectCity(event.city);
  }

  @override
  Future<void> close() async {
    await _selectedCitiesStreamSubscription?.cancel();
    return super.close();
  }
}
