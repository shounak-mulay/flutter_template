// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WeatherEventTearOff {
  const _$WeatherEventTearOff();

// ignore: unused_element
  _WatchWeatherForAllCities watchWeatherForAllCities() {
    return const _WatchWeatherForAllCities();
  }

// ignore: unused_element
  _WeatherListLoaded weatherListLoaded(
      Either<WeatherFailure, KtList<Weather>> weatherList) {
    return _WeatherListLoaded(
      weatherList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherEvent = _$WeatherEventTearOff();

/// @nodoc
mixin _$WeatherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchWeatherForAllCities(),
    @required
        Result weatherListLoaded(
            Either<WeatherFailure, KtList<Weather>> weatherList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchWeatherForAllCities(),
    Result weatherListLoaded(
        Either<WeatherFailure, KtList<Weather>> weatherList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchWeatherForAllCities(_WatchWeatherForAllCities value),
    @required Result weatherListLoaded(_WeatherListLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchWeatherForAllCities(_WatchWeatherForAllCities value),
    Result weatherListLoaded(_WeatherListLoaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WeatherEventCopyWith<$Res> {
  factory $WeatherEventCopyWith(
          WeatherEvent value, $Res Function(WeatherEvent) then) =
      _$WeatherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherEventCopyWithImpl<$Res> implements $WeatherEventCopyWith<$Res> {
  _$WeatherEventCopyWithImpl(this._value, this._then);

  final WeatherEvent _value;
  // ignore: unused_field
  final $Res Function(WeatherEvent) _then;
}

/// @nodoc
abstract class _$WatchWeatherForAllCitiesCopyWith<$Res> {
  factory _$WatchWeatherForAllCitiesCopyWith(_WatchWeatherForAllCities value,
          $Res Function(_WatchWeatherForAllCities) then) =
      __$WatchWeatherForAllCitiesCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchWeatherForAllCitiesCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$WatchWeatherForAllCitiesCopyWith<$Res> {
  __$WatchWeatherForAllCitiesCopyWithImpl(_WatchWeatherForAllCities _value,
      $Res Function(_WatchWeatherForAllCities) _then)
      : super(_value, (v) => _then(v as _WatchWeatherForAllCities));

  @override
  _WatchWeatherForAllCities get _value =>
      super._value as _WatchWeatherForAllCities;
}

/// @nodoc
class _$_WatchWeatherForAllCities implements _WatchWeatherForAllCities {
  const _$_WatchWeatherForAllCities();

  @override
  String toString() {
    return 'WeatherEvent.watchWeatherForAllCities()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchWeatherForAllCities);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchWeatherForAllCities(),
    @required
        Result weatherListLoaded(
            Either<WeatherFailure, KtList<Weather>> weatherList),
  }) {
    assert(watchWeatherForAllCities != null);
    assert(weatherListLoaded != null);
    return watchWeatherForAllCities();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchWeatherForAllCities(),
    Result weatherListLoaded(
        Either<WeatherFailure, KtList<Weather>> weatherList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchWeatherForAllCities != null) {
      return watchWeatherForAllCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchWeatherForAllCities(_WatchWeatherForAllCities value),
    @required Result weatherListLoaded(_WeatherListLoaded value),
  }) {
    assert(watchWeatherForAllCities != null);
    assert(weatherListLoaded != null);
    return watchWeatherForAllCities(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchWeatherForAllCities(_WatchWeatherForAllCities value),
    Result weatherListLoaded(_WeatherListLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchWeatherForAllCities != null) {
      return watchWeatherForAllCities(this);
    }
    return orElse();
  }
}

abstract class _WatchWeatherForAllCities implements WeatherEvent {
  const factory _WatchWeatherForAllCities() = _$_WatchWeatherForAllCities;
}

/// @nodoc
abstract class _$WeatherListLoadedCopyWith<$Res> {
  factory _$WeatherListLoadedCopyWith(
          _WeatherListLoaded value, $Res Function(_WeatherListLoaded) then) =
      __$WeatherListLoadedCopyWithImpl<$Res>;
  $Res call({Either<WeatherFailure, KtList<Weather>> weatherList});
}

/// @nodoc
class __$WeatherListLoadedCopyWithImpl<$Res>
    extends _$WeatherEventCopyWithImpl<$Res>
    implements _$WeatherListLoadedCopyWith<$Res> {
  __$WeatherListLoadedCopyWithImpl(
      _WeatherListLoaded _value, $Res Function(_WeatherListLoaded) _then)
      : super(_value, (v) => _then(v as _WeatherListLoaded));

  @override
  _WeatherListLoaded get _value => super._value as _WeatherListLoaded;

  @override
  $Res call({
    Object weatherList = freezed,
  }) {
    return _then(_WeatherListLoaded(
      weatherList == freezed
          ? _value.weatherList
          : weatherList as Either<WeatherFailure, KtList<Weather>>,
    ));
  }
}

/// @nodoc
class _$_WeatherListLoaded implements _WeatherListLoaded {
  const _$_WeatherListLoaded(this.weatherList) : assert(weatherList != null);

  @override
  final Either<WeatherFailure, KtList<Weather>> weatherList;

  @override
  String toString() {
    return 'WeatherEvent.weatherListLoaded(weatherList: $weatherList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherListLoaded &&
            (identical(other.weatherList, weatherList) ||
                const DeepCollectionEquality()
                    .equals(other.weatherList, weatherList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weatherList);

  @override
  _$WeatherListLoadedCopyWith<_WeatherListLoaded> get copyWith =>
      __$WeatherListLoadedCopyWithImpl<_WeatherListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchWeatherForAllCities(),
    @required
        Result weatherListLoaded(
            Either<WeatherFailure, KtList<Weather>> weatherList),
  }) {
    assert(watchWeatherForAllCities != null);
    assert(weatherListLoaded != null);
    return weatherListLoaded(weatherList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchWeatherForAllCities(),
    Result weatherListLoaded(
        Either<WeatherFailure, KtList<Weather>> weatherList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weatherListLoaded != null) {
      return weatherListLoaded(weatherList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchWeatherForAllCities(_WatchWeatherForAllCities value),
    @required Result weatherListLoaded(_WeatherListLoaded value),
  }) {
    assert(watchWeatherForAllCities != null);
    assert(weatherListLoaded != null);
    return weatherListLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchWeatherForAllCities(_WatchWeatherForAllCities value),
    Result weatherListLoaded(_WeatherListLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weatherListLoaded != null) {
      return weatherListLoaded(this);
    }
    return orElse();
  }
}

abstract class _WeatherListLoaded implements WeatherEvent {
  const factory _WeatherListLoaded(
          Either<WeatherFailure, KtList<Weather>> weatherList) =
      _$_WeatherListLoaded;

  Either<WeatherFailure, KtList<Weather>> get weatherList;
  _$WeatherListLoadedCopyWith<_WeatherListLoaded> get copyWith;
}

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

// ignore: unused_element
  _Initial inital() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded(KtList<Weather> weatherList) {
    return _Loaded(
      weatherList,
    );
  }

// ignore: unused_element
  _Failure failure(WeatherFailure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result loaded(KtList<Weather> weatherList),
    @required Result failure(WeatherFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result loaded(KtList<Weather> weatherList),
    Result failure(WeatherFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WeatherState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result loaded(KtList<Weather> weatherList),
    @required Result failure(WeatherFailure failure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result loaded(KtList<Weather> weatherList),
    Result failure(WeatherFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result loaded(KtList<Weather> weatherList),
    @required Result failure(WeatherFailure failure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result loaded(KtList<Weather> weatherList),
    Result failure(WeatherFailure failure),
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
    @required Result inital(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WeatherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({KtList<Weather> weatherList});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object weatherList = freezed,
  }) {
    return _then(_Loaded(
      weatherList == freezed
          ? _value.weatherList
          : weatherList as KtList<Weather>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded(this.weatherList) : assert(weatherList != null);

  @override
  final KtList<Weather> weatherList;

  @override
  String toString() {
    return 'WeatherState.loaded(weatherList: $weatherList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.weatherList, weatherList) ||
                const DeepCollectionEquality()
                    .equals(other.weatherList, weatherList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(weatherList);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result loaded(KtList<Weather> weatherList),
    @required Result failure(WeatherFailure failure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(weatherList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result loaded(KtList<Weather> weatherList),
    Result failure(WeatherFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(weatherList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements WeatherState {
  const factory _Loaded(KtList<Weather> weatherList) = _$_Loaded;

  KtList<Weather> get weatherList;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({WeatherFailure failure});

  $WeatherFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed ? _value.failure : failure as WeatherFailure,
    ));
  }

  @override
  $WeatherFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $WeatherFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.failure) : assert(failure != null);

  @override
  final WeatherFailure failure;

  @override
  String toString() {
    return 'WeatherState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loading(),
    @required Result loaded(KtList<Weather> weatherList),
    @required Result failure(WeatherFailure failure),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loading(),
    Result loaded(KtList<Weather> weatherList),
    Result failure(WeatherFailure failure),
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
    @required Result inital(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result failure(_Failure value),
  }) {
    assert(inital != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result failure(_Failure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements WeatherState {
  const factory _Failure(WeatherFailure failure) = _$_Failure;

  WeatherFailure get failure;
  _$FailureCopyWith<_Failure> get copyWith;
}
