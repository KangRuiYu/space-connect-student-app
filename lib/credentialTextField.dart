import 'package:flutter/material.dart';

class CredentialTextField extends StatelessWidget {
  final String text;
  final TextEditingController textController;

  CredentialTextField({@required this.text, @required this.textController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Theme.of(context).hintColor,
      style: Theme.of(context).textTheme.bodyText1,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: Theme.of(context).textTheme.bodyText1,
        hoverColor: Colors.white,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).hintColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).hintColor),
        ),
      ),
      controller: textController,
    );
  }
}
