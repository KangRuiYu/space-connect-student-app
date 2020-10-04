import 'package:flutter/material.dart';

import 'dashBoard.dart';
import '../registrationBox.dart';

class RegistrationScreen extends StatelessWidget {
  void switchToDashboard(
      BuildContext context, Map<String, String> accountInfo) {
    // Switch from login screen to dashboard
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => DashBoard(accountInfo)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Register',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80),
            RegistrationBox(switchToDashboard),
          ],
        ),
      ),
    );
  }
}
