import 'package:flutter/material.dart';

class Me extends StatefulWidget{
  @override
  _MeState createState()=> _MeState();
}

class _MeState extends State<Me>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Align(
          alignment: Alignment(1.0,-1.0),
          child: Column(
              children: <Widget>[
                Image.asset('assets/images/flutter.png'),
                Text('Flutter')
              ]
          )
      ),
    );
  }
}