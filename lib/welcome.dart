import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GMAO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        'app1/lib/main.dart': (context) => LoginPage(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png', 
            ),
            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                
                Navigator.pushReplacementNamed(context, 'app1/lib/main.dart');
              },
              child: Text('Start'), 
            ),
          ],
        ),
      ),
    );
  }
}
