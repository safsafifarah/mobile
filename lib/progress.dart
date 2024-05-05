import 'package:flutter/material.dart';

class InProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('In Progress Page'),
      ),
      body: Center(
        child: Text('In Progress'),
      ),
    );
  }
}