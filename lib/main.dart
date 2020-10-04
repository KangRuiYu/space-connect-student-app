import 'package:flutter/material.dart';

import 'screens/loginScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      hintColor: Colors.blueGrey,
      accentColor: Colors.deepPurple[300],
      iconTheme: IconThemeData(color: Colors.white),
      appBarTheme: AppBarTheme(
        color: Colors.blueGrey[900],
      ),
      scaffoldBackgroundColor: Colors.blueGrey[800],
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          fontSize: 32,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        headline3: TextStyle(
          fontSize: 24,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
    title: 'Space Connect',
    home: LoginScreen(),
  ));
}
