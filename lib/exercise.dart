import 'package:flutter/material.dart';

class Exercise extends StatefulWidget{
  @override
  _ExerciseState createState()=> _ExerciseState();
}

class _ExerciseState extends State<Exercise>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Center(
        child:ListView(
          children: <Widget>[
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
          ],
          itemExtent: 185,
        ),
      ),
    );
  }
}