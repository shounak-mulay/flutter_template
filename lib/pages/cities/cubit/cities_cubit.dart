import 'package:bloc/bloc.dart';
import 'package:flutter_template/model/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_state.dart';
part 'cities_cubit.freezed.dart';

class CitiesCubit extends Cubit<CitiesState> {
  CitiesCubit() : super(_Initial());
 
}
