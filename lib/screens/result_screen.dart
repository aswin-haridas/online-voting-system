import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Election Results'),
      ),
      body: Center(
        child: Text('Display election results here'),
      ),
    );
  }
}
