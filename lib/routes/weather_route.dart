import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/database/weather_database.dart';
import 'package:flutter_template/di/service_locator.dart';
import 'package:flutter_template/model/city.dart';
import 'package:flutter_template/model/weather.dart';
import 'package:flutter_template/network/weather_api_service.dart';
import 'package:flutter_template/routes/route_generator.dart';

class WeatherRoute extends StatefulWidget {
  @override
  _WeatherRouteState createState() => _WeatherRouteState();
}

class _WeatherRouteState extends State<WeatherRoute> {

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
    sl<WeatherDatabase>().cityDao.allCitiesFuture().then(updateCitiesState);
    cityDatabaseSubscription = sl<WeatherDatabase>().cityDao.allCities().listen(updateCitiesState);
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
      appBar: AppBar(
        title: const Text('Weather'),
        actions: [IconButton(icon: const Icon(Icons.add), onPressed: () {
          Navigator.pushNamed(context, Routes.cities);
        })]
      ),
      body: FutureBuilder<List<Weather>>(
        future: Future.wait(callWeatherApiForAllCities()),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator()
            );
          }
          if (snapshot.hasData) {
            return WeatherList(snapshot.data);
          }
          return const Center(child: Text('Add a city'));
        },
      ),
    );
  }
}

class WeatherList extends StatelessWidget {

  final List<Weather> weatherData;

  const WeatherList(this.weatherData);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      addAutomaticKeepAlives: false,
      itemCount: weatherData.length,
      itemBuilder: (BuildContext context, int index) {
        final weather = weatherData[index];
        return ListTile(
            title: Text(weather.title),
            subtitle: Text('Min Temp: ${weather.consolidatedWeathers[0].minTemp.round()}° Max Temp: ${weather.consolidatedWeathers[0].maxTemp.round()}°'),
            trailing: weather.consolidatedWeathers[0].weatherConditionImage(),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(color: Colors.grey);
      },
    );
  }
}
