import 'package:flutter/material.dart';

import '../bigButton.dart';
import 'projectScreen.dart';
import 'quizScreen.dart';
import 'accountScreen.dart';
import 'submissionScreen.dart';
import 'aboutScreen.dart';

class DashBoard extends StatelessWidget {
  final Map<String, String> accountInfo;

  DashBoard(this.accountInfo);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Row(
          children: [
            Text(
              'Dashboard',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BigButton(
              text: 'Account',
              icon: Icons.account_circle,
              pressedFunction: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AccountScreen(accountInfo))),
            ),
            BigButton(
              text: 'My Projects',
              icon: Icons.biotech,
              pressedFunction: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProjectScreen())),
            ),
            BigButton(
              text: 'Quizzes',
              icon: Icons.assignment,
              pressedFunction: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuizScreen())),
            ),
            BigButton(
              text: 'Submissions',
              icon: Icons.upload_file,
              pressedFunction: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SubmissionScreen())),
            ),
            BigButton(
              text: 'About',
              icon: Icons.info,
              pressedFunction: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen())),
            ),
            BigButton(
              text: 'Logout',
              icon: Icons.logout,
              pressedFunction: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
