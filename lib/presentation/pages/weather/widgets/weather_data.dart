import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/core/widgets/loading_widget.dart';
import 'package:flutter_template/presentation/pages/weather/bloc/weather_bloc.dart';
import 'package:flutter_template/presentation/pages/weather/widgets/weather_error.dart';
import 'package:flutter_template/presentation/pages/weather/widgets/weather_list.dart';

class WeatherData extends StatelessWidget {
  const WeatherData();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(builder: (context, state) {
      return state.map(
        inital: (_) => const Text('Initial'),
        loading: (_) => const WidgetLoading(loadingMessage: 'Loading Weather'),
        loaded: (state) => WeatherList(weatherList: state.weatherList),
        failure: (state) => WeatherError(failure: state.failure),
      );
    });
  }
}
