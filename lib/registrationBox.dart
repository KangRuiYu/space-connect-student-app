import 'package:flutter/material.dart';
import 'package:space_connect/credentialTextField.dart';

class RegistrationBox extends StatefulWidget {
  final Function _successCall;

  RegistrationBox(this._successCall);

  @override
  _RegistrationBoxState createState() => _RegistrationBoxState(_successCall);
}

class _RegistrationBoxState extends State<RegistrationBox> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();
  final _roleController = TextEditingController();
  final Function _successCall;

  _RegistrationBoxState(this._successCall);

  Map<String, String> retrieveRegistrationData() {
    // Retrieve login data from text fields
    return {
      'Name': _nameController.text,
      'Username': _usernameController.text,
      'Password': _passwordController.text,
      'Email': _emailController.text,
      'Role': _roleController.text,
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CredentialTextField(
                text: 'Name',
                textController: _nameController,
              ),
              CredentialTextField(
                text: 'Username',
                textController: _usernameController,
              ),
              CredentialTextField(
                text: 'Password',
                textController: _passwordController,
              ),
              CredentialTextField(
                text: 'Email',
                textController: _emailController,
              ),
              CredentialTextField(
                text: 'Role',
                textController: _roleController,
              ),
              SizedBox(height: 40),
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Already have an account?',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              SizedBox(height: 40),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Register',
                      style: Theme.of(context).textTheme.bodyText1),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  _successCall(
                    context,
                    retrieveRegistrationData(),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
