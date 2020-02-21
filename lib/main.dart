import 'package:flutter/material.dart';
import 'exercise.dart';
import 'tracking.dart';
import 'me.dart';
import 'loginscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fitness App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color(0XFF6D3FFF),
          accentColor: Color(0XFF233C63),
          fontFamily: 'Poppins',
        ),
      home: LoginScreen(),
      routes:{
        LoginScreen.routeName: (context) => LoginScreen(),
        '/exercise':(context) => Exercise(),
        '/tracking':(context) => Tracking(),
        '/me':(context) => Me(),
      },
    );
  }
}