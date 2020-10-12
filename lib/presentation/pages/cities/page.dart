
import 'package:flutter/material.dart';
import 'package:flutter_template/data/datasource/local/weather_database.dart';
import 'package:flutter_template/data/datasource/network/weather_api_service.dart';
import 'package:flutter_template/data/model/city.dart';
import 'package:flutter_template/di/service_locator.dart';

class CitiesPage extends StatefulWidget {
  @override
  _CitiesPageState createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  String _searchText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a City')
      ),
      body: Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        setState(() {
                          _searchText = value;
                        });
                      },
                      decoration: const InputDecoration(
                        labelText: 'City',
                        hintText: 'Chicago',
                      ),
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child:FutureBuilder<List<List<City>>>(
                future: Future.wait([
                  sl<WeatherAPIService>().searchCities(_searchText),
                  sl<WeatherDatabase>().cityDao.getAllCities()
                ]),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator()
                    );
                  }
                  if (snapshot.hasData) {
                    final citiesFromAPI = snapshot.data[0];
                    final selectedCities = snapshot.data[1];
                    if (citiesFromAPI.isNotEmpty) {
                      return Cities(citiesFromAPI, selectedCities, (City selectedCity) {
                        sl<WeatherDatabase>().cityDao.insertCity(selectedCity);
                        Navigator.pop(context);
                      });
                    }
                  }
                  return const Center(child: Text('Search for a city'));
                },
              ),
            )
          ],
       ))
    );
  }
}

class Cities extends StatelessWidget {
  final List<City> cities;
  final List<City> selectedCities;
  final Function onCitySelected;

  const Cities(this.cities, this.selectedCities, this.onCitySelected);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      addAutomaticKeepAlives: false,
      itemCount: cities.length,
      itemBuilder: (BuildContext context, int index) {
        final city = cities[index];
        return ListTile(
            title: Text(city.title),
            trailing: selectedCities.any((element) => city.title == element.title) ? const Icon(Icons.check) : null,
            onTap: () => onCitySelected(cities[index])
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(color: Colors.grey);
      },
    );
  }
}
