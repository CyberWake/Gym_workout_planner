import 'package:flutter/material.dart';
import 'package:flutter_app/exercised.dart';
import 'package:flutter_app/login_screen.dart';
import 'homepage.dart';
import 'exercised.dart';
import 'trackingd.dart';
import 'med.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0XFF6D3FFF),
        accentColor: Color(0XFF233C63),
        fontFamily: 'Poppins',
      ),
      home: LoginScreen(),
      routes:{
        '/loginpage':(context) => LoginScreen(),
        '/homepage':(context) => HomePage(),
        '/exercise':(context) => ExerciseD(),
        '/tracking':(context) => TrackingD(),
        '/me':(context) => MeD(),
      },
    );
  }
}
