import 'package:flutter/material.dart';
import 'homepage.dart';
import 'exercised.dart';
import 'trackingd.dart';
import 'med.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0XFF6D3FFF),
        accentColor: Color(0XFF233C63),
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
      routes:{
        '/exercise':(context) => ExerciseD(),
        '/tracking':(context) => TrackingD(),
        '/me':(context) => MeD(),
      },
    );
  }
}
