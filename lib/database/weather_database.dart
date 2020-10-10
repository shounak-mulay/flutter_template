
import 'dart:io';

import 'package:flutter_template/database/dao/city_dao.dart';
import 'package:flutter_template/database/tables/cities.dart';
import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'weather_database.g.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Cities], daos: [CityDao])
class WeatherDatabase extends _$WeatherDatabase {

  WeatherDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
