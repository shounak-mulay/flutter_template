import 'package:flutter_template/data/datasource/local/dao/city_dao_interface.dart';
import 'package:flutter_template/data/datasource/local/tables/cities.dart';
import 'package:flutter_template/data/datasource/local/weather_database.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:injectable/injectable.dart';
import 'package:moor/moor.dart';

part 'city_dao.g.dart';

@LazySingleton(as: ICityDao)
@UseDao(tables: [Cities])
class CityDao extends DatabaseAccessor<WeatherDatabase>
    with _$CityDaoMixin
    implements ICityDao {
  CityDao(WeatherDatabase attachedDatabase) : super(attachedDatabase);

  @override
  Stream<List<City>> watchAllCities() {
    return select(cities)
        .map((cityDataModel) => cityDataModel.convertToDomainModel())
        .watch();
  }

  @override
  Future<List<City>> getAllCities() {
    return select(cities)
        .map((cityDataModel) => cityDataModel.convertToDomainModel())
        .get();
  }

  @override
  Future<void> insertCity(City city) async{
    await into(cities).insert(city.convertToDataModel());
  }
}
