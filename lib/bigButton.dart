import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function pressedFunction;

  BigButton({
    @required this.text,
    @required this.icon,
    this.pressedFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: pressedFunction,
        color: Theme.of(context).accentColor,
        child: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(icon, size: 50, color: Theme.of(context).iconTheme.color),
              SizedBox(width: 20),
              Text(
                text,
                style: Theme.of(context).textTheme.headline2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
