import 'package:flutter/material.dart';

import '../contentCard.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: Theme.of(context).textTheme.headline1,
        ),
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          ContentCard(
            Image(image: NetworkImage('https://inteng-storage.s3.amazonaws.com/images/sizes/Apollo_11main_resize_md.jpg')),
          ),
          ContentCard(
            Text(
                'The purpose of this app is for students to share their projects with their educators and in the process, hopefully foster an excitement for space exploration.',
                style: Theme.of(context).textTheme.bodyText1),
          ),
          ContentCard(
            Text(
                'This app was developed in conjunction Kang Yu, Gal Ben-Itzhak, Rithu Eswaramoorthy, and Sharon Lee in the Flutter framework.',
                style: Theme.of(context).textTheme.bodyText1),
          ),
        ],
      ),
    );
  }
}
