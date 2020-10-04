import 'package:flutter/material.dart';
import 'dart:math';

import '../contentCard.dart';

class SubmissionScreen extends StatelessWidget {
  static const List<String> planets = [
    'Mercury',
    'Venus',
    'Earth',
    'Mars',
    'Jupiter',
    'Saturn',
    'Uranus',
    'Neptune',
    'Pluto',
  ];

  String pickRandomHomework() {
    var rng = Random();
    var points = rng.nextInt(5);
    var planet = planets[rng.nextInt(9)];
    return '$planet Homework $points/5';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Submissions',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContentCard(Text(pickRandomHomework(),
                style: Theme.of(context).textTheme.headline2)),
            ContentCard(Text(pickRandomHomework(),
                style: Theme.of(context).textTheme.headline2)),
            ContentCard(Text(pickRandomHomework(),
                style: Theme.of(context).textTheme.headline2)),
            ContentCard(Text(pickRandomHomework(),
                style: Theme.of(context).textTheme.headline2)),
            ContentCard(Text(pickRandomHomework(),
                style: Theme.of(context).textTheme.headline2)),
            ContentCard(Text(pickRandomHomework(),
                style: Theme.of(context).textTheme.headline2)),
            ContentCard(Text(pickRandomHomework(),
                style: Theme.of(context).textTheme.headline2)),
            ContentCard(Text(pickRandomHomework(),
                style: Theme.of(context).textTheme.headline2)),
          ],
        ),
      ),
    );
  }
}
