// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cities_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CitiesEventTearOff {
  const _$CitiesEventTearOff();

// ignore: unused_element
  _SearchCities searchCities(String searchTerm) {
    return _SearchCities(
      searchTerm,
    );
  }

// ignore: unused_element
  _SelectCity selectCity(City city) {
    return _SelectCity(
      city,
    );
  }

// ignore: unused_element
  _WatchSelectedCities watchSelectedCities() {
    return const _WatchSelectedCities();
  }

// ignore: unused_element
  _SelectedCitiesLoaded selectedCitiesLoaded(
      Either<CityFailure, KtList<City>> selectedCities) {
    return _SelectedCitiesLoaded(
      selectedCities,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CitiesEvent = _$CitiesEventTearOff();

/// @nodoc
mixin _$CitiesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchCities(String searchTerm),
    @required Result selectCity(City city),
    @required Result watchSelectedCities(),
    @required
        Result selectedCitiesLoaded(
            Either<CityFailure, KtList<City>> selectedCities),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchCities(String searchTerm),
    Result selectCity(City city),
    Result watchSelectedCities(),
    Result selectedCitiesLoaded(
        Either<CityFailure, KtList<City>> selectedCities),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchCities(_SearchCities value),
    @required Result selectCity(_SelectCity value),
    @required Result watchSelectedCities(_WatchSelectedCities value),
    @required Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchCities(_SearchCities value),
    Result selectCity(_SelectCity value),
    Result watchSelectedCities(_WatchSelectedCities value),
    Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CitiesEventCopyWith<$Res> {
  factory $CitiesEventCopyWith(
          CitiesEvent value, $Res Function(CitiesEvent) then) =
      _$CitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesEventCopyWithImpl<$Res> implements $CitiesEventCopyWith<$Res> {
  _$CitiesEventCopyWithImpl(this._value, this._then);

  final CitiesEvent _value;
  // ignore: unused_field
  final $Res Function(CitiesEvent) _then;
}

/// @nodoc
abstract class _$SearchCitiesCopyWith<$Res> {
  factory _$SearchCitiesCopyWith(
          _SearchCities value, $Res Function(_SearchCities) then) =
      __$SearchCitiesCopyWithImpl<$Res>;
  $Res call({String searchTerm});
}

/// @nodoc
class __$SearchCitiesCopyWithImpl<$Res> extends _$CitiesEventCopyWithImpl<$Res>
    implements _$SearchCitiesCopyWith<$Res> {
  __$SearchCitiesCopyWithImpl(
      _SearchCities _value, $Res Function(_SearchCities) _then)
      : super(_value, (v) => _then(v as _SearchCities));

  @override
  _SearchCities get _value => super._value as _SearchCities;

  @override
  $Res call({
    Object searchTerm = freezed,
  }) {
    return _then(_SearchCities(
      searchTerm == freezed ? _value.searchTerm : searchTerm as String,
    ));
  }
}

/// @nodoc
class _$_SearchCities implements _SearchCities {
  const _$_SearchCities(this.searchTerm) : assert(searchTerm != null);

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'CitiesEvent.searchCities(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchCities &&
            (identical(other.searchTerm, searchTerm) ||
                const DeepCollectionEquality()
                    .equals(other.searchTerm, searchTerm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(searchTerm);

  @override
  _$SearchCitiesCopyWith<_SearchCities> get copyWith =>
      __$SearchCitiesCopyWithImpl<_SearchCities>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchCities(String searchTerm),
    @required Result selectCity(City city),
    @required Result watchSelectedCities(),
    @required
        Result selectedCitiesLoaded(
            Either<CityFailure, KtList<City>> selectedCities),
  }) {
    assert(searchCities != null);
    assert(selectCity != null);
    assert(watchSelectedCities != null);
    assert(selectedCitiesLoaded != null);
    return searchCities(searchTerm);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchCities(String searchTerm),
    Result selectCity(City city),
    Result watchSelectedCities(),
    Result selectedCitiesLoaded(
        Either<CityFailure, KtList<City>> selectedCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchCities != null) {
      return searchCities(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchCities(_SearchCities value),
    @required Result selectCity(_SelectCity value),
    @required Result watchSelectedCities(_WatchSelectedCities value),
    @required Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
  }) {
    assert(searchCities != null);
    assert(selectCity != null);
    assert(watchSelectedCities != null);
    assert(selectedCitiesLoaded != null);
    return searchCities(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchCities(_SearchCities value),
    Result selectCity(_SelectCity value),
    Result watchSelectedCities(_WatchSelectedCities value),
    Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchCities != null) {
      return searchCities(this);
    }
    return orElse();
  }
}

abstract class _SearchCities implements CitiesEvent {
  const factory _SearchCities(String searchTerm) = _$_SearchCities;

  String get searchTerm;
  _$SearchCitiesCopyWith<_SearchCities> get copyWith;
}

/// @nodoc
abstract class _$SelectCityCopyWith<$Res> {
  factory _$SelectCityCopyWith(
          _SelectCity value, $Res Function(_SelectCity) then) =
      __$SelectCityCopyWithImpl<$Res>;
  $Res call({City city});

  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$SelectCityCopyWithImpl<$Res> extends _$CitiesEventCopyWithImpl<$Res>
    implements _$SelectCityCopyWith<$Res> {
  __$SelectCityCopyWithImpl(
      _SelectCity _value, $Res Function(_SelectCity) _then)
      : super(_value, (v) => _then(v as _SelectCity));

  @override
  _SelectCity get _value => super._value as _SelectCity;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(_SelectCity(
      city == freezed ? _value.city : city as City,
    ));
  }

  @override
  $CityCopyWith<$Res> get city {
    if (_value.city == null) {
      return null;
    }
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
class _$_SelectCity implements _SelectCity {
  const _$_SelectCity(this.city) : assert(city != null);

  @override
  final City city;

  @override
  String toString() {
    return 'CitiesEvent.selectCity(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectCity &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  _$SelectCityCopyWith<_SelectCity> get copyWith =>
      __$SelectCityCopyWithImpl<_SelectCity>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchCities(String searchTerm),
    @required Result selectCity(City city),
    @required Result watchSelectedCities(),
    @required
        Result selectedCitiesLoaded(
            Either<CityFailure, KtList<City>> selectedCities),
  }) {
    assert(searchCities != null);
    assert(selectCity != null);
    assert(watchSelectedCities != null);
    assert(selectedCitiesLoaded != null);
    return selectCity(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchCities(String searchTerm),
    Result selectCity(City city),
    Result watchSelectedCities(),
    Result selectedCitiesLoaded(
        Either<CityFailure, KtList<City>> selectedCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectCity != null) {
      return selectCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchCities(_SearchCities value),
    @required Result selectCity(_SelectCity value),
    @required Result watchSelectedCities(_WatchSelectedCities value),
    @required Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
  }) {
    assert(searchCities != null);
    assert(selectCity != null);
    assert(watchSelectedCities != null);
    assert(selectedCitiesLoaded != null);
    return selectCity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchCities(_SearchCities value),
    Result selectCity(_SelectCity value),
    Result watchSelectedCities(_WatchSelectedCities value),
    Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectCity != null) {
      return selectCity(this);
    }
    return orElse();
  }
}

abstract class _SelectCity implements CitiesEvent {
  const factory _SelectCity(City city) = _$_SelectCity;

  City get city;
  _$SelectCityCopyWith<_SelectCity> get copyWith;
}

/// @nodoc
abstract class _$WatchSelectedCitiesCopyWith<$Res> {
  factory _$WatchSelectedCitiesCopyWith(_WatchSelectedCities value,
          $Res Function(_WatchSelectedCities) then) =
      __$WatchSelectedCitiesCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchSelectedCitiesCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res>
    implements _$WatchSelectedCitiesCopyWith<$Res> {
  __$WatchSelectedCitiesCopyWithImpl(
      _WatchSelectedCities _value, $Res Function(_WatchSelectedCities) _then)
      : super(_value, (v) => _then(v as _WatchSelectedCities));

  @override
  _WatchSelectedCities get _value => super._value as _WatchSelectedCities;
}

/// @nodoc
class _$_WatchSelectedCities implements _WatchSelectedCities {
  const _$_WatchSelectedCities();

  @override
  String toString() {
    return 'CitiesEvent.watchSelectedCities()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchSelectedCities);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchCities(String searchTerm),
    @required Result selectCity(City city),
    @required Result watchSelectedCities(),
    @required
        Result selectedCitiesLoaded(
            Either<CityFailure, KtList<City>> selectedCities),
  }) {
    assert(searchCities != null);
    assert(selectCity != null);
    assert(watchSelectedCities != null);
    assert(selectedCitiesLoaded != null);
    return watchSelectedCities();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchCities(String searchTerm),
    Result selectCity(City city),
    Result watchSelectedCities(),
    Result selectedCitiesLoaded(
        Either<CityFailure, KtList<City>> selectedCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSelectedCities != null) {
      return watchSelectedCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchCities(_SearchCities value),
    @required Result selectCity(_SelectCity value),
    @required Result watchSelectedCities(_WatchSelectedCities value),
    @required Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
  }) {
    assert(searchCities != null);
    assert(selectCity != null);
    assert(watchSelectedCities != null);
    assert(selectedCitiesLoaded != null);
    return watchSelectedCities(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchCities(_SearchCities value),
    Result selectCity(_SelectCity value),
    Result watchSelectedCities(_WatchSelectedCities value),
    Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSelectedCities != null) {
      return watchSelectedCities(this);
    }
    return orElse();
  }
}

abstract class _WatchSelectedCities implements CitiesEvent {
  const factory _WatchSelectedCities() = _$_WatchSelectedCities;
}

/// @nodoc
abstract class _$SelectedCitiesLoadedCopyWith<$Res> {
  factory _$SelectedCitiesLoadedCopyWith(_SelectedCitiesLoaded value,
          $Res Function(_SelectedCitiesLoaded) then) =
      __$SelectedCitiesLoadedCopyWithImpl<$Res>;
  $Res call({Either<CityFailure, KtList<City>> selectedCities});
}

/// @nodoc
class __$SelectedCitiesLoadedCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res>
    implements _$SelectedCitiesLoadedCopyWith<$Res> {
  __$SelectedCitiesLoadedCopyWithImpl(
      _SelectedCitiesLoaded _value, $Res Function(_SelectedCitiesLoaded) _then)
      : super(_value, (v) => _then(v as _SelectedCitiesLoaded));

  @override
  _SelectedCitiesLoaded get _value => super._value as _SelectedCitiesLoaded;

  @override
  $Res call({
    Object selectedCities = freezed,
  }) {
    return _then(_SelectedCitiesLoaded(
      selectedCities == freezed
          ? _value.selectedCities
          : selectedCities as Either<CityFailure, KtList<City>>,
    ));
  }
}

/// @nodoc
class _$_SelectedCitiesLoaded implements _SelectedCitiesLoaded {
  const _$_SelectedCitiesLoaded(this.selectedCities)
      : assert(selectedCities != null);

  @override
  final Either<CityFailure, KtList<City>> selectedCities;

  @override
  String toString() {
    return 'CitiesEvent.selectedCitiesLoaded(selectedCities: $selectedCities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedCitiesLoaded &&
            (identical(other.selectedCities, selectedCities) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCities, selectedCities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedCities);

  @override
  _$SelectedCitiesLoadedCopyWith<_SelectedCitiesLoaded> get copyWith =>
      __$SelectedCitiesLoadedCopyWithImpl<_SelectedCitiesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result searchCities(String searchTerm),
    @required Result selectCity(City city),
    @required Result watchSelectedCities(),
    @required
        Result selectedCitiesLoaded(
            Either<CityFailure, KtList<City>> selectedCities),
  }) {
    assert(searchCities != null);
    assert(selectCity != null);
    assert(watchSelectedCities != null);
    assert(selectedCitiesLoaded != null);
    return selectedCitiesLoaded(selectedCities);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result searchCities(String searchTerm),
    Result selectCity(City city),
    Result watchSelectedCities(),
    Result selectedCitiesLoaded(
        Either<CityFailure, KtList<City>> selectedCities),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectedCitiesLoaded != null) {
      return selectedCitiesLoaded(selectedCities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result searchCities(_SearchCities value),
    @required Result selectCity(_SelectCity value),
    @required Result watchSelectedCities(_WatchSelectedCities value),
    @required Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
  }) {
    assert(searchCities != null);
    assert(selectCity != null);
    assert(watchSelectedCities != null);
    assert(selectedCitiesLoaded != null);
    return selectedCitiesLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result searchCities(_SearchCities value),
    Result selectCity(_SelectCity value),
    Result watchSelectedCities(_WatchSelectedCities value),
    Result selectedCitiesLoaded(_SelectedCitiesLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectedCitiesLoaded != null) {
      return selectedCitiesLoaded(this);
    }
    return orElse();
  }
}

abstract class _SelectedCitiesLoaded implements CitiesEvent {
  const factory _SelectedCitiesLoaded(
          Either<CityFailure, KtList<City>> selectedCities) =
      _$_SelectedCitiesLoaded;

  Either<CityFailure, KtList<City>> get selectedCities;
  _$SelectedCitiesLoadedCopyWith<_SelectedCitiesLoaded> get copyWith;
}

/// @nodoc
class _$CitiesStateTearOff {
  const _$CitiesStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  SelectingCity selectingCity(City city) {
    return SelectingCity(
      city,
    );
  }

// ignore: unused_element
  Loaded loaded(KtList<City> cityList) {
    return Loaded(
      cityList,
    );
  }

// ignore: unused_element
  SelectedLoaded selectedLoaded(KtList<City> selectedList) {
    return SelectedLoaded(
      selectedList,
    );
  }

// ignore: unused_element
  Failure failure(CityFailure failure) {
    return Failure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CitiesState = _$CitiesStateTearOff();

/// @nodoc
mixin _$CitiesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result selectingCity(City city),
    @required Result loaded(KtList<City> cityList),
    @required Result selectedLoaded(KtList<City> selectedList),
    @required Result failure(CityFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result selectingCity(City city),
    Result loaded(KtList<City> cityList),
    Result selectedLoaded(KtList<City> selectedList),
    Result failure(CityFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result selectingCity(SelectingCity value),
    @required Result loaded(Loaded value),
    @required Result selectedLoaded(SelectedLoaded value),
    @required Result failure(Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result selectingCity(SelectingCity value),
    Result loaded(Loaded value),
    Result selectedLoaded(SelectedLoaded value),
    Result failure(Failure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CitiesStateCopyWith<$Res> {
  factory $CitiesStateCopyWith(
          CitiesState value, $Res Function(CitiesState) then) =
      _$CitiesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesStateCopyWithImpl<$Res> implements $CitiesStateCopyWith<$Res> {
  _$CitiesStateCopyWithImpl(this._value, this._then);

  final CitiesState _value;
  // ignore: unused_field
  final $Res Function(CitiesState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$CitiesStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'CitiesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result selectingCity(City city),
    @required Result loaded(KtList<City> cityList),
    @required Result selectedLoaded(KtList<City> selectedList),
    @required Result failure(CityFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result selectingCity(City city),
    Result loaded(KtList<City> cityList),
    Result selectedLoaded(KtList<City> selectedList),
    Result failure(CityFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result selectingCity(SelectingCity value),
    @required Result loaded(Loaded value),
    @required Result selectedLoaded(SelectedLoaded value),
    @required Result failure(Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result selectingCity(SelectingCity value),
    Result loaded(Loaded value),
    Result selectedLoaded(SelectedLoaded value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CitiesState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CitiesStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'CitiesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result selectingCity(City city),
    @required Result loaded(KtList<City> cityList),
    @required Result selectedLoaded(KtList<City> selectedList),
    @required Result failure(CityFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result selectingCity(City city),
    Result loaded(KtList<City> cityList),
    Result selectedLoaded(KtList<City> selectedList),
    Result failure(CityFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result selectingCity(SelectingCity value),
    @required Result loaded(Loaded value),
    @required Result selectedLoaded(SelectedLoaded value),
    @required Result failure(Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result selectingCity(SelectingCity value),
    Result loaded(Loaded value),
    Result selectedLoaded(SelectedLoaded value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CitiesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SelectingCityCopyWith<$Res> {
  factory $SelectingCityCopyWith(
          SelectingCity value, $Res Function(SelectingCity) then) =
      _$SelectingCityCopyWithImpl<$Res>;
  $Res call({City city});

  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$SelectingCityCopyWithImpl<$Res> extends _$CitiesStateCopyWithImpl<$Res>
    implements $SelectingCityCopyWith<$Res> {
  _$SelectingCityCopyWithImpl(
      SelectingCity _value, $Res Function(SelectingCity) _then)
      : super(_value, (v) => _then(v as SelectingCity));

  @override
  SelectingCity get _value => super._value as SelectingCity;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(SelectingCity(
      city == freezed ? _value.city : city as City,
    ));
  }

  @override
  $CityCopyWith<$Res> get city {
    if (_value.city == null) {
      return null;
    }
    return $CityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc
class _$SelectingCity implements SelectingCity {
  const _$SelectingCity(this.city) : assert(city != null);

  @override
  final City city;

  @override
  String toString() {
    return 'CitiesState.selectingCity(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectingCity &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  $SelectingCityCopyWith<SelectingCity> get copyWith =>
      _$SelectingCityCopyWithImpl<SelectingCity>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result selectingCity(City city),
    @required Result loaded(KtList<City> cityList),
    @required Result selectedLoaded(KtList<City> selectedList),
    @required Result failure(CityFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return selectingCity(city);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result selectingCity(City city),
    Result loaded(KtList<City> cityList),
    Result selectedLoaded(KtList<City> selectedList),
    Result failure(CityFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectingCity != null) {
      return selectingCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result selectingCity(SelectingCity value),
    @required Result loaded(Loaded value),
    @required Result selectedLoaded(SelectedLoaded value),
    @required Result failure(Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return selectingCity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result selectingCity(SelectingCity value),
    Result loaded(Loaded value),
    Result selectedLoaded(SelectedLoaded value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectingCity != null) {
      return selectingCity(this);
    }
    return orElse();
  }
}

abstract class SelectingCity implements CitiesState {
  const factory SelectingCity(City city) = _$SelectingCity;

  City get city;
  $SelectingCityCopyWith<SelectingCity> get copyWith;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({KtList<City> cityList});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$CitiesStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object cityList = freezed,
  }) {
    return _then(Loaded(
      cityList == freezed ? _value.cityList : cityList as KtList<City>,
    ));
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.cityList) : assert(cityList != null);

  @override
  final KtList<City> cityList;

  @override
  String toString() {
    return 'CitiesState.loaded(cityList: $cityList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.cityList, cityList) ||
                const DeepCollectionEquality()
                    .equals(other.cityList, cityList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cityList);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result selectingCity(City city),
    @required Result loaded(KtList<City> cityList),
    @required Result selectedLoaded(KtList<City> selectedList),
    @required Result failure(CityFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return loaded(cityList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result selectingCity(City city),
    Result loaded(KtList<City> cityList),
    Result selectedLoaded(KtList<City> selectedList),
    Result failure(CityFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(cityList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result selectingCity(SelectingCity value),
    @required Result loaded(Loaded value),
    @required Result selectedLoaded(SelectedLoaded value),
    @required Result failure(Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result selectingCity(SelectingCity value),
    Result loaded(Loaded value),
    Result selectedLoaded(SelectedLoaded value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements CitiesState {
  const factory Loaded(KtList<City> cityList) = _$Loaded;

  KtList<City> get cityList;
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $SelectedLoadedCopyWith<$Res> {
  factory $SelectedLoadedCopyWith(
          SelectedLoaded value, $Res Function(SelectedLoaded) then) =
      _$SelectedLoadedCopyWithImpl<$Res>;
  $Res call({KtList<City> selectedList});
}

/// @nodoc
class _$SelectedLoadedCopyWithImpl<$Res> extends _$CitiesStateCopyWithImpl<$Res>
    implements $SelectedLoadedCopyWith<$Res> {
  _$SelectedLoadedCopyWithImpl(
      SelectedLoaded _value, $Res Function(SelectedLoaded) _then)
      : super(_value, (v) => _then(v as SelectedLoaded));

  @override
  SelectedLoaded get _value => super._value as SelectedLoaded;

  @override
  $Res call({
    Object selectedList = freezed,
  }) {
    return _then(SelectedLoaded(
      selectedList == freezed
          ? _value.selectedList
          : selectedList as KtList<City>,
    ));
  }
}

/// @nodoc
class _$SelectedLoaded implements SelectedLoaded {
  const _$SelectedLoaded(this.selectedList) : assert(selectedList != null);

  @override
  final KtList<City> selectedList;

  @override
  String toString() {
    return 'CitiesState.selectedLoaded(selectedList: $selectedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SelectedLoaded &&
            (identical(other.selectedList, selectedList) ||
                const DeepCollectionEquality()
                    .equals(other.selectedList, selectedList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(selectedList);

  @override
  $SelectedLoadedCopyWith<SelectedLoaded> get copyWith =>
      _$SelectedLoadedCopyWithImpl<SelectedLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result selectingCity(City city),
    @required Result loaded(KtList<City> cityList),
    @required Result selectedLoaded(KtList<City> selectedList),
    @required Result failure(CityFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return selectedLoaded(selectedList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result selectingCity(City city),
    Result loaded(KtList<City> cityList),
    Result selectedLoaded(KtList<City> selectedList),
    Result failure(CityFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectedLoaded != null) {
      return selectedLoaded(selectedList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result selectingCity(SelectingCity value),
    @required Result loaded(Loaded value),
    @required Result selectedLoaded(SelectedLoaded value),
    @required Result failure(Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return selectedLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result selectingCity(SelectingCity value),
    Result loaded(Loaded value),
    Result selectedLoaded(SelectedLoaded value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (selectedLoaded != null) {
      return selectedLoaded(this);
    }
    return orElse();
  }
}

abstract class SelectedLoaded implements CitiesState {
  const factory SelectedLoaded(KtList<City> selectedList) = _$SelectedLoaded;

  KtList<City> get selectedList;
  $SelectedLoadedCopyWith<SelectedLoaded> get copyWith;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
  $Res call({CityFailure failure});

  $CityFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> extends _$CitiesStateCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(Failure _value, $Res Function(Failure) _then)
      : super(_value, (v) => _then(v as Failure));

  @override
  Failure get _value => super._value as Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(Failure(
      failure == freezed ? _value.failure : failure as CityFailure,
    ));
  }

  @override
  $CityFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $CityFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$Failure implements Failure {
  const _$Failure(this.failure) : assert(failure != null);

  @override
  final CityFailure failure;

  @override
  String toString() {
    return 'CitiesState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $FailureCopyWith<Failure> get copyWith =>
      _$FailureCopyWithImpl<Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result selectingCity(City city),
    @required Result loaded(KtList<City> cityList),
    @required Result selectedLoaded(KtList<City> selectedList),
    @required Result failure(CityFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result selectingCity(City city),
    Result loaded(KtList<City> cityList),
    Result selectedLoaded(KtList<City> selectedList),
    Result failure(CityFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result selectingCity(SelectingCity value),
    @required Result loaded(Loaded value),
    @required Result selectedLoaded(SelectedLoaded value),
    @required Result failure(Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(selectingCity != null);
    assert(loaded != null);
    assert(selectedLoaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result selectingCity(SelectingCity value),
    Result loaded(Loaded value),
    Result selectedLoaded(SelectedLoaded value),
    Result failure(Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements CitiesState {
  const factory Failure(CityFailure failure) = _$Failure;

  CityFailure get failure;
  $FailureCopyWith<Failure> get copyWith;
}
