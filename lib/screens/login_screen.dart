// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // validate user credentials and navigate to the voting screen
                Navigator.pushNamed(context, '/voting');
              },
              child: Text('Login'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // validate user credentials and navigate to the voting screen
                Navigator.pushNamed(context, '/voting');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
