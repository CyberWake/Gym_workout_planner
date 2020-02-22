import 'package:flutter/material.dart';

class MeD extends StatefulWidget{
  @override
  _MeDState createState()=> _MeDState();
}

class _MeDState extends State<MeD>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        titleSpacing: 10,
        backgroundColor:Color(0XFF6D3FFF),
      ),
      backgroundColor: Colors.blue,
      body:Align(
          alignment: Alignment(1.0,-1.0),
          child: Column(
              children: <Widget>[
                Image.asset('assets/img/flutter2.png'),
                Text('Flutter')
              ]
          )
      ),
    );
  }
}