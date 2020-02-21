import 'package:flutter/material.dart';

class Tracking extends StatefulWidget{
  @override
  _TrackingState createState()=> _TrackingState();
}

class _TrackingState extends State<Tracking>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Align(
          alignment: Alignment(1.0,-1.0),
          child: Row(
              children: <Widget>[
                Image.asset('assets/images/flutter2.png'),
                Text('Flutter')
              ]
          )
      ),
    );
  }
}