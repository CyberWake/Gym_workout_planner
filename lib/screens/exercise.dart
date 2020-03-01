import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/card.dart';

class Exercise extends StatefulWidget{
  @override
  _ExerciseState createState()=> _ExerciseState();
}

class _ExerciseState extends State<Exercise>{
  List<String> cardImageUrl=[
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
    'https://blog.expertsoftwareteam.com/wp-content/uploads/2019/01/flutter12.png',
  ];
  List<String> tileTitle =[
    'FULL BODY',
    'LOWER BODY',
    'ABS BEGINNER',
    'CHEST BEGINNER',
    'ARM BEGINNER',
    'LEG BEGINNER',
    'SHOULDER BEGINNER',
    'BACK BEGINNER',
    'ABS INTERMEDIATE',
    'CHEST INTERMEDIATE',
    'ARM INTERMEDIATE',
    'LEG INTERMEDIATE',
    'SHOULDER INTERMEDIATE',
    'BACK INTERMEDIATE',
    'ABS ADVANCED',
    'CHEST ADVANCED',
    'ARM ADVANCED',
    'LEG ADVANCED',
    'SHOULDER ADVANCED',
    'BACK ADVANCED',
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


