// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'weather_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WeatherFailureTearOff {
  const _$WeatherFailureTearOff();

// ignore: unused_element
  Unknown unknown(String message) {
    return Unknown(
      message,
    );
  }

// ignore: unused_element
  UnableToFetch unableToFetch(String message) {
    return UnableToFetch(
      message,
    );
  }

// ignore: unused_element
  RequestTimeOut requestTimeOut(String message) {
    return RequestTimeOut(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WeatherFailure = _$WeatherFailureTearOff();

/// @nodoc
mixin _$WeatherFailure {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(String message),
    @required Result unableToFetch(String message),
    @required Result requestTimeOut(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(String message),
    Result unableToFetch(String message),
    Result requestTimeOut(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(Unknown value),
    @required Result unableToFetch(UnableToFetch value),
    @required Result requestTimeOut(RequestTimeOut value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(Unknown value),
    Result unableToFetch(UnableToFetch value),
    Result requestTimeOut(RequestTimeOut value),
    @required Result orElse(),
  });

  $WeatherFailureCopyWith<WeatherFailure> get copyWith;
}

/// @nodoc
abstract class $WeatherFailureCopyWith<$Res> {
  factory $WeatherFailureCopyWith(
          WeatherFailure value, $Res Function(WeatherFailure) then) =
      _$WeatherFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$WeatherFailureCopyWithImpl<$Res>
    implements $WeatherFailureCopyWith<$Res> {
  _$WeatherFailureCopyWithImpl(this._value, this._then);

  final WeatherFailure _value;
  // ignore: unused_field
  final $Res Function(WeatherFailure) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class $UnknownCopyWith<$Res> implements $WeatherFailureCopyWith<$Res> {
  factory $UnknownCopyWith(Unknown value, $Res Function(Unknown) then) =
      _$UnknownCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$UnknownCopyWithImpl<$Res> extends _$WeatherFailureCopyWithImpl<$Res>
    implements $UnknownCopyWith<$Res> {
  _$UnknownCopyWithImpl(Unknown _value, $Res Function(Unknown) _then)
      : super(_value, (v) => _then(v as Unknown));

  @override
  Unknown get _value => super._value as Unknown;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(Unknown(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$Unknown implements Unknown {
  const _$Unknown(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Unknown &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UnknownCopyWith<Unknown> get copyWith =>
      _$UnknownCopyWithImpl<Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(String message),
    @required Result unableToFetch(String message),
    @required Result requestTimeOut(String message),
  }) {
    assert(unknown != null);
    assert(unableToFetch != null);
    assert(requestTimeOut != null);
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(String message),
    Result unableToFetch(String message),
    Result requestTimeOut(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(Unknown value),
    @required Result unableToFetch(UnableToFetch value),
    @required Result requestTimeOut(RequestTimeOut value),
  }) {
    assert(unknown != null);
    assert(unableToFetch != null);
    assert(requestTimeOut != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(Unknown value),
    Result unableToFetch(UnableToFetch value),
    Result requestTimeOut(RequestTimeOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class Unknown implements WeatherFailure {
  const factory Unknown(String message) = _$Unknown;

  @override
  String get message;
  @override
  $UnknownCopyWith<Unknown> get copyWith;
}

/// @nodoc
abstract class $UnableToFetchCopyWith<$Res>
    implements $WeatherFailureCopyWith<$Res> {
  factory $UnableToFetchCopyWith(
          UnableToFetch value, $Res Function(UnableToFetch) then) =
      _$UnableToFetchCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$UnableToFetchCopyWithImpl<$Res>
    extends _$WeatherFailureCopyWithImpl<$Res>
    implements $UnableToFetchCopyWith<$Res> {
  _$UnableToFetchCopyWithImpl(
      UnableToFetch _value, $Res Function(UnableToFetch) _then)
      : super(_value, (v) => _then(v as UnableToFetch));

  @override
  UnableToFetch get _value => super._value as UnableToFetch;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UnableToFetch(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$UnableToFetch implements UnableToFetch {
  const _$UnableToFetch(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherFailure.unableToFetch(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnableToFetch &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $UnableToFetchCopyWith<UnableToFetch> get copyWith =>
      _$UnableToFetchCopyWithImpl<UnableToFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(String message),
    @required Result unableToFetch(String message),
    @required Result requestTimeOut(String message),
  }) {
    assert(unknown != null);
    assert(unableToFetch != null);
    assert(requestTimeOut != null);
    return unableToFetch(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(String message),
    Result unableToFetch(String message),
    Result requestTimeOut(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToFetch != null) {
      return unableToFetch(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(Unknown value),
    @required Result unableToFetch(UnableToFetch value),
    @required Result requestTimeOut(RequestTimeOut value),
  }) {
    assert(unknown != null);
    assert(unableToFetch != null);
    assert(requestTimeOut != null);
    return unableToFetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(Unknown value),
    Result unableToFetch(UnableToFetch value),
    Result requestTimeOut(RequestTimeOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToFetch != null) {
      return unableToFetch(this);
    }
    return orElse();
  }
}

abstract class UnableToFetch implements WeatherFailure {
  const factory UnableToFetch(String message) = _$UnableToFetch;

  @override
  String get message;
  @override
  $UnableToFetchCopyWith<UnableToFetch> get copyWith;
}

/// @nodoc
abstract class $RequestTimeOutCopyWith<$Res>
    implements $WeatherFailureCopyWith<$Res> {
  factory $RequestTimeOutCopyWith(
          RequestTimeOut value, $Res Function(RequestTimeOut) then) =
      _$RequestTimeOutCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$RequestTimeOutCopyWithImpl<$Res>
    extends _$WeatherFailureCopyWithImpl<$Res>
    implements $RequestTimeOutCopyWith<$Res> {
  _$RequestTimeOutCopyWithImpl(
      RequestTimeOut _value, $Res Function(RequestTimeOut) _then)
      : super(_value, (v) => _then(v as RequestTimeOut));

  @override
  RequestTimeOut get _value => super._value as RequestTimeOut;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(RequestTimeOut(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$RequestTimeOut implements RequestTimeOut {
  const _$RequestTimeOut(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherFailure.requestTimeOut(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestTimeOut &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $RequestTimeOutCopyWith<RequestTimeOut> get copyWith =>
      _$RequestTimeOutCopyWithImpl<RequestTimeOut>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(String message),
    @required Result unableToFetch(String message),
    @required Result requestTimeOut(String message),
  }) {
    assert(unknown != null);
    assert(unableToFetch != null);
    assert(requestTimeOut != null);
    return requestTimeOut(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(String message),
    Result unableToFetch(String message),
    Result requestTimeOut(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestTimeOut != null) {
      return requestTimeOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(Unknown value),
    @required Result unableToFetch(UnableToFetch value),
    @required Result requestTimeOut(RequestTimeOut value),
  }) {
    assert(unknown != null);
    assert(unableToFetch != null);
    assert(requestTimeOut != null);
    return requestTimeOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(Unknown value),
    Result unableToFetch(UnableToFetch value),
    Result requestTimeOut(RequestTimeOut value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (requestTimeOut != null) {
      return requestTimeOut(this);
    }
    return orElse();
  }
}

abstract class RequestTimeOut implements WeatherFailure {
  const factory RequestTimeOut(String message) = _$RequestTimeOut;

  @override
  String get message;
  @override
  $RequestTimeOutCopyWith<RequestTimeOut> get copyWith;
}
