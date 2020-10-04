import 'package:flutter/material.dart';

import 'dart:math';

class ProjectCard extends StatelessWidget {
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

  String pickRandomProjectName() {
    var rng = Random();
    var planet = planets[rng.nextInt(9)];
    return '$planet Project';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        color: Theme.of(context).accentColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pickRandomProjectName(),
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'by you',
                style: Theme.of(context).textTheme.headline3,
              ),
              TextField(
                cursorColor: Theme.of(context).textTheme.bodyText1.color,
                style: Theme.of(context).textTheme.bodyText1,
                decoration: InputDecoration(
                  labelText: 'Project details',
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  hoverColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).textTheme.bodyText1.color),
                  ),
                ),
                minLines: 1,
                maxLines: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
