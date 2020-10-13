import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/di/service_locator.dart';
import 'package:flutter_template/presentation/pages/cities/bloc/cities_bloc.dart';
import 'package:flutter_template/presentation/pages/cities/widgets/cities_list.dart';
import 'package:flutter_template/presentation/pages/cities/widgets/cities_search_bar.dart';

class CitiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add a City')),
      body: BlocProvider(
        create: (_) => getIt<CitiesBloc>(),
        child: Column(
          children: [CitiesSearchBar(), CitiesList()],
        ),
      ),
    );
  }
}
