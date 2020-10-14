import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/presentation/pages/cities/bloc/cities_bloc.dart';
import 'package:provider/provider.dart';

class CitiesSearchBar extends StatelessWidget {
  const CitiesSearchBar();

  @override
  Widget build(BuildContext context) {
    final CitiesBloc citiesBloc = Provider.of<CitiesBloc>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: BlocConsumer<CitiesBloc, CitiesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return TextFormField(
            onChanged: (searchTerm) =>
                citiesBloc.add(CitiesEvent.searchCities(searchTerm)),
            decoration: const InputDecoration(
              labelText: 'City',
              hintText: 'Chicago',
            ),
          );
        },
      ),
    );
  }
}
