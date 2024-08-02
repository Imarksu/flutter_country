import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  final String flag;
  final String name;
  final String language;
  final String continent;

  const CountryCard({
    Key? key,
    required this.flag,
    required this.name,
    required this.language,
    required this.continent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(flag, width: 50, height: 50),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(continent),
                Text(language),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
