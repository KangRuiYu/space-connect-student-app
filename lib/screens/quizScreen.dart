import 'package:flutter/material.dart';

import '../quizCard.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'Quizzes',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            QuizCard(),
            QuizCard(),
            QuizCard(),
            QuizCard(),
            QuizCard(),
            QuizCard(),
          ],
        ),
      ),
    );
  }
}
