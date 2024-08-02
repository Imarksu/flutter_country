import 'package:flutter/material.dart';
import 'country_card.dart';

void main() {
  runApp(CountryListApp());
}

class CountryListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Country List'),
          centerTitle: false,
        ),
        body: CountryList(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CountryList extends StatelessWidget {
  final List<Map<String, String>> countries = [
    {
      'flag': 'assets/flags/us.png',
      'name': 'United States',
      'continent': 'North America',
      'language': 'English'
    },
    {
      'flag': 'assets/flags/mx.png',
      'name': 'Mexico',
      'continent': 'North America',
      'language': 'Spanish'
    },
    {
      'flag': 'assets/flags/br.png',
      'name': 'Brazil',
      'continent': 'South America',
      'language': 'Portuguese'
    },
    {
      'flag': 'assets/flags/de.png',
      'name': 'Germany',
      'continent': 'Europe',
      'language': 'German'
    },
    {
      'flag': 'assets/flags/fr.png',
      'name': 'France',
      'continent': 'Europe',
      'language': 'French'
    },
    {
      'flag': 'assets/flags/jp.png',
      'name': 'Japan',
      'continent': 'Asia',
      'language': 'Japanese'
    },
    {
      'flag': 'assets/flags/in.png',
      'name': 'India',
      'continent': 'Asia',
      'language': 'Hindi'
    },
    {
      'flag': 'assets/flags/cn.png',
      'name': 'China',
      'continent': 'Asia',
      'language': 'Chinese'
    },
    {
      'flag': 'assets/flags/ng.png',
      'name': 'Nigeria',
      'continent': 'Africa',
      'language': 'English'
    },
    {
      'flag': 'assets/flags/za.png',
      'name': 'South Africa',
      'continent': 'Africa',
      'language': 'Afrikaans'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: countries.length,
      itemBuilder: (context, index) {
        final country = countries[index];
        return CountryCard(
          flag: country['flag']!,
          name: country['name']!,
          language: country['language']!,
          continent: country['continent']!,
        );
      },
    );
  }
}
