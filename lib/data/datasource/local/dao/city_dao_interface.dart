import 'package:flutter_template/data/model/city.dart';

abstract class ICityDao {
  Stream<List<City>> watchAllCities();
  Future<List<City>> getAllCities();
  Future<void> insertCity(City city);
}