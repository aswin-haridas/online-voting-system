import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/voting_screen.dart';
import 'screens/result_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Voting App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/voting',
      routes: {
        '/': (context) => AuthenticationScreen(),
        '/voting': (context) => VotingScreen(),
        '/results': (context) => ResultsScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
