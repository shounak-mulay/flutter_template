import 'package:flutter/material.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/presentation/pages/cities/bloc/cities_bloc.dart';
import 'package:flutter_template/presentation/pages/cities/widgets/cities_list_tile_trailing_status_indicator.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class CitiesListData extends StatelessWidget {
  final KtList<City> loadedCities;

  const CitiesListData(this.loadedCities);

  @override
  Widget build(BuildContext context) {
    final CitiesBloc citiesBloc = Provider.of<CitiesBloc>(context);
    citiesBloc.add(const CitiesEvent.watchSelectedCities());
    return Expanded(
      child: ListView.separated(
        addAutomaticKeepAlives: false,
        itemCount: loadedCities.size,
        itemBuilder: (BuildContext context, int index) {
          final city = loadedCities[index];
          return ListTile(
            title: Text(city.title),
            trailing: CitiesListTileTrailingStatusIndicator(city: city),
            onTap: () {
              citiesBloc.add(CitiesEvent.selectCity(city));
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(color: Colors.grey);
        },
      ),
    );
  }
}