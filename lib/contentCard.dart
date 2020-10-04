import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final Widget _contents;

  ContentCard(this._contents);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      child: Card(
        color: Theme.of(context).accentColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _contents,
        ),
      ),
    );
  }
}
