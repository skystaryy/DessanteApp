import 'dashboard.dart';
import 'package:dessante/login.dart';
import 'package:flutter/material.dart';
import 'package:dessante/home.dart';
import 'package:dessante/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dessante',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      routes: {
        '/dashboard' : (context) => Dashboard(),
        '/home': (context) => HomePage(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
