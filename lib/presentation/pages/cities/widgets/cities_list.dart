import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/core/widgets/error_widget.dart';
import 'package:flutter_template/core/widgets/loading_widget.dart';
import 'package:flutter_template/core/widgets/simple_info_message.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/presentation/pages/cities/bloc/cities_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';

class CitiesList extends StatelessWidget {
  const CitiesList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitiesBloc, CitiesState>(
      buildWhen: (previous, current) => current.maybeMap(
          selectedLoaded: (_) => false,
          selectingCity: (_) => false,
          orElse: () => true),
      builder: (context, state) {
        return state.maybeMap(
            initial: (_) => const SimpleInfoMessage(
                  infoMessage: "Start typing to search...",
                ),
            loading: (_) => const WidgetLoading(),
            loaded: (data) => _CitiesListData(data.cityList),
            failure: (e) => WidgetError(
                  errorMessage: e.failure.message,
                ),
            orElse: () => const WidgetLoading());
      },
    );
  }
}

class _CitiesListData extends StatelessWidget {
  final KtList<City> loadedCities;

  const _CitiesListData(this.loadedCities);

  @override
  Widget build(BuildContext context) {
    final CitiesBloc citiesBloc = Provider.of<CitiesBloc>(context);
    return Expanded(
      child: ListView.separated(
        addAutomaticKeepAlives: false,
        itemCount: loadedCities.size,
        itemBuilder: (BuildContext context, int index) {
          final city = loadedCities[index];
          return ListTile(
            title: Text(city.title),
            trailing: _TrailingStatusIndicator(city: city),
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

class _TrailingStatusIndicator extends StatelessWidget {
  final City city;

  const _TrailingStatusIndicator({Key key, this.city}) : super(key: key);

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
