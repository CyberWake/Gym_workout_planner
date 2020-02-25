import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'card.dart';

class Exercise extends StatefulWidget{
  @override
  _ExerciseState createState()=> _ExerciseState();
}

class _ExerciseState extends State<Exercise>{
  List<String> cardImageUrl=[
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  List<String> tileTitle =[
    'Hello','hi','ritik','danish','ayush','joy'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:Center(
        child:Container(
          child: ListView.builder(
            itemBuilder: (_,int index) => CardData(this.tileTitle[index],this.cardImageUrl[index],0,0),
            itemCount: this.tileTitle.length,
          ),
        ),
      ),
    );
  }
}


