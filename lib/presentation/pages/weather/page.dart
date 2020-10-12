import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/di/service_locator.dart';
import 'package:flutter_template/presentation/pages/weather/widgets/weather_data.dart';
import 'package:flutter_template/presentation/routes/routes.dart';

import 'bloc/weather_bloc.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Weather',
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(context, Routes.cities);
                })
          ]),
      body: BlocProvider(
        create: (context) =>
            getIt<WeatherBloc>()..add(WeatherEvent.watchWeatherForAllCities()),
        child: const WeatherData(),
      ),
    );
  }
}
