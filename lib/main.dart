import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'exercise.dart';
import 'tracking.dart';
import 'me.dart';
import 'welcome.dart';

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
        home:Scaffold(
        ),
      initialRoute:'/welcome',
      routes:{
        '/welcome':(context) => Welcome(),
        '/exercise':(context) => Exercise(),
        '/tracking':(context) => Tracking(),
        '/me':(context) => Me(),
      },
    );
  }
}