
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_failure.freezed.dart';

@freezed
abstract class CityFailure with _$CityFailure {
  const factory CityFailure.unknown() = Unknown;
}