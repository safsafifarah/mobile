import 'package:flutter/material.dart';

class ValidatedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Validated Page'),
      ),
      body: Center(
        child: Text('Validated'),
      ),
    );
  }
}