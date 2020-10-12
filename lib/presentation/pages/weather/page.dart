import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/data/datasource/local/weather_database.dart';
import 'package:flutter_template/data/datasource/network/weather_api_service.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/data/model/weather.dart';
import 'package:flutter_template/di/service_locator.dart';
import 'package:flutter_template/presentation/routes/routes.dart';
import 'package:kt_dart/collection.dart';

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
              inital: (_) => Text('Initial'),
              loading: (_) => Center(child: CircularProgressIndicator()),
              loaded: (state) {
                return WeatherList(state.weatherList);
              },
              failure: (state) {
                return state.failure.map(
                  unknown: (value) => Text('Unknown Failure Occured. Message: ${value.message}'),
                  unableToFetch: (value) =>
                      Text('Unable to fetch weather data. Message: ${value.message}'),
                  requestTimeOut: (value) => Text('Request timed out. Message: ${value.message}'),
                );
              },
            );
          }),
        ));
  }
}

class WeatherList extends StatelessWidget {
  final KtList<Weather> weatherData;

  const WeatherList(this.weatherData);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      addAutomaticKeepAlives: false,
      itemCount: weatherData.size,
      itemBuilder: (BuildContext context, int index) {
        final weather = weatherData[index];
        return ListTile(
          title: Text(weather.title),
          subtitle: Text(
              'Min Temp: ${weather.consolidatedWeathers[0].minTemp.round()}° Max Temp: ${weather.consolidatedWeathers[0].maxTemp.round()}°'),
          trailing: weather.consolidatedWeathers[0].weatherConditionImage(),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(color: Colors.grey);
      },
    );
  }
}
