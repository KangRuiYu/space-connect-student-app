import 'package:flutter/material.dart';

import '../contentCard.dart';

class AccountScreen extends StatelessWidget {
  final Map<String, String> accountInfo;

  AccountScreen(this.accountInfo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account Info',
          style: Theme.of(context).textTheme.headline1,
        ),
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: accountInfo.keys.map((key) {
            if (key != 'Password') {
              return ContentCard(
                Text(
                  '$key: ${accountInfo[key]}',
                  style: Theme.of(context).textTheme.headline2,
                ),
              );
            } else {
              var password = "";
              for (int i = 0; i < accountInfo[key].length; i++) {
                password += "*";
              }
              return ContentCard(
                Text(
                  '$key: $password',
                  style: Theme.of(context).textTheme.headline2,
                ),
              );
            }
          }).toList(),
        ),
      ),
    );
  }
}
