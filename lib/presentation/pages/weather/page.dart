import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/core/widgets/error_widget.dart';
import 'package:flutter_template/core/widgets/loading_widget.dart';
import 'package:flutter_template/data/datasource/local/weather_database.dart';
import 'package:flutter_template/data/datasource/network/weather_api_service.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/data/model/weather.dart';
import 'package:flutter_template/di/service_locator.dart';
import 'package:flutter_template/presentation/pages/weather/widgets/weather_list.dart';
import 'package:flutter_template/presentation/routes/routes.dart';

import 'bloc/weather_bloc.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  List<City> cities;
  StreamSubscription<List<City>> cityDatabaseSubscription;

  @override
  void initState() {
    super.initState();

    void updateCitiesState(List<City> cities) {
      setState(() {
        this.cities = cities.toList();
      });
    }

    sl<WeatherDatabase>().cityDao.getAllCities().then(updateCitiesState);
    cityDatabaseSubscription = sl<WeatherDatabase>()
        .cityDao
        .watchAllCities()
        .listen(updateCitiesState);
  }

  @override
  void dispose() {
    cityDatabaseSubscription.cancel();
    super.dispose();
  }

  List<Future<Weather>> callWeatherApiForAllCities() {
    if (cities != null) {
      return cities.map((city) {
        return sl<WeatherAPIService>().weatherForCity(city.woeid);
      }).toList();
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Weather'), actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                Navigator.pushNamed(context, Routes.cities);
              })
        ]),
        body: BlocProvider(
          create: (context) => getIt<WeatherBloc>()
            ..add(WeatherEvent.watchWeatherForAllCities()),
          child:
              BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
            return state.map(
              inital: (_) => const Text('Initial'),
              loading: (_) => const WidgetLoading(loadingMessage: 'Loading Weather'),
              loaded: (state) => WeatherList(state.weatherList),
              failure: (state) {
                return state.failure.map(
                  unknown: (value) => WidgetError(
                      errorMessage:
                          'Unknown Failure Occured. Message: ${value.message}'),
                  unableToFetch: (value) => WidgetError(
                      errorMessage:
                          'Unable to fetch weather data. Message: ${value.message}'),
                  requestTimeOut: (value) => WidgetError(
                      errorMessage:
                          'Request timed out. Message: ${value.message}'),
                );
              },
            );
          }),
        ));
  }
}
