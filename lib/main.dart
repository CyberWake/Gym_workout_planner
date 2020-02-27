import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/homepage.dart';
import 'screens/exercise.dart';
import 'screens/tracking.dart';
import 'screens/me.dart';

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
        '/exercise':(context) => Exercise(),
        '/tracking':(context) => Tracking(),
        '/me':(context) => Me(),
      },
    );
  }
}
