import 'package:flutter/material.dart';
import 'dart:math';

class QuizCard extends StatelessWidget {
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

  String pickRandomQuiz() {
    var rng = Random();
    var percentage = rng.nextInt(50) + 50;
    var planet = planets[rng.nextInt(9)];
    return '$planet Quiz: $percentage%';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: Card(
        color: Theme.of(context).accentColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                pickRandomQuiz(),
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
