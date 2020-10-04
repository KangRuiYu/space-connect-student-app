import 'package:flutter/material.dart';

import 'credentialTextField.dart';
import 'screens/registrationScreen.dart';

class LoginBox extends StatefulWidget {
  final Function _successCall;

  LoginBox(this._successCall);

  @override
  _LoginBoxState createState() => _LoginBoxState(_successCall);
}

class _LoginBoxState extends State<LoginBox> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final Function _successCall;

  _LoginBoxState(this._successCall);

  Map<String, String> retrieveLoginData() {
    // Retrieve login data from text fields
    return {
      'Username': _usernameController.text,
      'Password': _passwordController.text,
    };
  }

  bool authenticate(Map<String, String> loginData) {
    // Authenticates the given login data
    if (loginData['Username'] == 'bob' && loginData['Password'] == '123')
      return true;
    return false;
  }

  @override
  void dispose() {
    // Dispose controllers properly
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.connect_without_contact,
              color: Theme.of(context).iconTheme.color,
              size: 40,
            ),
            SizedBox(width: 20),
            Text(
              'Space Connect',
              style: Theme.of(context).textTheme.headline2,
            )
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CredentialTextField(
                text: 'Username',
                textController: _usernameController,
              ),
              CredentialTextField(
                text: 'Password',
                textController: _passwordController,
              ),
              SizedBox(height: 40),
              FlatButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen())),
                child: Text(
                  'Don\'t have an account?',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(height: 40),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Login',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  if (authenticate(retrieveLoginData()))
                    _successCall(context, retrieveLoginData());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
