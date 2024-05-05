import 'package:flutter/material.dart';

class PendingRequestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pending Requests Page'),
      ),
      body: Center(
        child: Text('Pending Requests'),
      ),
    );
  }
}