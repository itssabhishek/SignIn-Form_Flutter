import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.only(top: 20.0),
      child: Form(
        child: Column(
          children: [
            emailField(),
            passwordField(),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email address',
        hintText: 'you@example.com',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  Widget passwordField() {
    return TextFormField(
      /*
      To hide input from user
      obscureText: true,
      */
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: '********',
      ),
    );
  }

  Widget submitButton() {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        onPrimary: Colors.blue,
      ),
      child: const Text('Submit'),
    );
  }
}
