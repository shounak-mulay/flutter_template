import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/presentation/pages/cities/bloc/cities_bloc.dart';
import 'package:kt_dart/kt.dart';

class CitiesListTileTrailingStatusIndicator extends StatelessWidget {
  final City city;

  const CitiesListTileTrailingStatusIndicator({Key key, this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitiesBloc, CitiesState>(
      buildWhen: (previous, current) => current.maybeMap(
        selectedLoaded: (_) => true,
        selectingCity: (c) => city == c.city,
        orElse: () => false,
      ),
      builder: (context, state) => state.maybeMap(
        selectingCity: (state) => const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircularProgressIndicator(),
        ),
        selectedLoaded: (state) {
          if (state.selectedList
              .any((element) => city.title == element.title)) {
            return const Icon(Icons.check);
          } else {
            return const SizedBox(
              width: 0,
              height: 0,
            );
          }
        },
        orElse: () => const SizedBox(
          width: 0,
          height: 0,
        ),
      ),
    );
  }
}
