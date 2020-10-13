import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/core/widgets/error_widget.dart';
import 'package:flutter_template/core/widgets/loading_widget.dart';
import 'package:flutter_template/core/widgets/simple_info_message.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/presentation/pages/cities/bloc/cities_bloc.dart';
import 'package:kt_dart/collection.dart';

class CitiesList extends StatelessWidget {
  const CitiesList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitiesBloc, CitiesState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SimpleInfoMessage(
            infoMessage: "Start typing to search...",
          ),
          loading: (_) => const WidgetLoading(),
          loaded: (data) =>
              Text("loaded $data"),
          failure: (e) => WidgetError(
            errorMessage: e.failure.message,
          ),
        );
      },
    );
  }
}

class _CitiesListData extends StatelessWidget {
  final KtList<City> loadedCities;
  final KtList<City> selectedCities;

  const _CitiesListData(this.loadedCities, this.selectedCities);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      addAutomaticKeepAlives: false,
      itemCount: loadedCities.size,
      itemBuilder: (BuildContext context, int index) {
        final city = loadedCities[index];
        return ListTile(
          title: Text(city.title),
          trailing: selectedCities.any((element) => city.title == element.title)
              ? const Icon(Icons.check)
              : null,
          onTap: () => {},
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(color: Colors.grey);
      },
    );
  }
}
