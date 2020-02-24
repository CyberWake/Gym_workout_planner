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
        child:Card(
            elevation: 0,
            color: Colors.blue,
            child: Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    decoration: new BoxDecoration(
                      color: Colors.green, //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                        topLeft:  const  Radius.circular(40.0),
                        topRight: const  Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0),
                      ),
                      image:DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://simpleactivity435203168.files.wordpress.com/2019/09/flutter-1024x486.png?w=1086'),
                      ),
                    ),
                    child: Center(
                      child: Text(''),
                    ),
                  ),
                ]
            )
        ),
      ),
    );
  }
}