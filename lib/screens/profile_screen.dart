import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Profile Information'),
            // Display user profile information here
            ElevatedButton(
              onPressed: () {
                // Navigate to the Edit Profile screen
                Navigator.pushNamed(context, '/editprofile');
              },
              child: Text('Edit Profile'),
            ),
            SizedBox(height: 20),
            Text('Voting History'),
            // Display past voting history here
          ],
        ),
      ),
    );
  }
}
