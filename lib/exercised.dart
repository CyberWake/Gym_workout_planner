import 'package:flutter/material.dart';

class ExerciseD extends StatefulWidget{
  @override
  _ExerciseDState createState()=> _ExerciseDState();
}

class _ExerciseDState extends State<ExerciseD>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        titleSpacing: 10,
        backgroundColor:Color(0XFF6D3FFF),
      ),
      body:Center(
        child:ListView(
          children: <Widget>[
            Card(
                child: Column(
                    children: <Widget>[
                      Image.asset('assets/img/flutter2.png'),
                      Text('Flutter')
                    ]
                )
            ),
            Card(
                child: Column(
                    children: <Widget>[
                      Image.asset('assets/img/flutter2.png'),
                      Text('Flutter')
                    ]
                )
            ),
            Card(
                child: Column(
                    children: <Widget>[
                      Image.asset('assets/img/flutter2.png'),
                      Text('Flutter')
                    ]
                )
            ),
            Card(
                child: Column(
                    children: <Widget>[
                      Image.asset('assets/img/flutter2.png'),
                      Text('Flutter')
                    ]
                )
            ),
            Card(
                child: Column(
                    children: <Widget>[
                      Image.asset('assets/img/flutter2.png'),
                      Text('Flutter')
                    ]
                )
            ),
            Card(
                child: Column(
                    children: <Widget>[
                      Image.asset('assets/img/flutter2.png'),
                      Text('Flutter')
                    ]
                )
            ),
            Card(
                child: Column(
                    children: <Widget>[
                      Image.asset('assets/img/flutter2.png'),
                      Text('Flutter')
                    ]
                )
            ),
          ],
          itemExtent: 190,
        ),
      ),
    );
  }
}