import 'package:flutter/material.dart';
import 'package:flutter_template/di/service_locator.dart';
import 'package:flutter_template/presentation/pages/cities/bloc/cities_bloc.dart';

class CitiesSearchBar extends StatelessWidget {
  const CitiesSearchBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: TextFormField(
        onChanged: (searchTerm) =>
            getIt<CitiesBloc>().add(CitiesEvent.searchCities(searchTerm)),
        decoration: const InputDecoration(
          labelText: 'City',
          hintText: 'Chicago',
        ),
      ),
    );
  }
}
