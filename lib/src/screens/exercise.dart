import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widget/card.dart';

class Exercise extends StatefulWidget{
  @override
  _ExerciseState createState()=> _ExerciseState();
}

class _ExerciseState extends State<Exercise>{
  List<String> cardImageUrl=[
    'assets/img/full_body.jpg',//full body
    'assets/img/lower_body.jpeg',//lower body
    'assets/img/abs_beginner.png',//abs beginner
    'assets/img/chest_beginner.png',//chest beginner
    'assets/img/arm_beginner.png',//arm beginner
    'assets/img/lower_body.jpeg',//leg beginner
    'assets/img/abs_intermediate.png',//shoulder beginner
    'assets/img/back_beginner.png',//back beginner
    'assets/img/abs_beginner.png',//abs beginner
    'assets/img/chest_beginner.png',//chest beginner
    'assets/img/arm_beginner.png',//arm beginner
    'assets/img/lower_body.jpeg',//leg beginner
    'assets/img/abs_intermediate.png',//shoulder beginner
    'assets/img/back_beginner.png',//back beginner
    'assets/img/abs_beginner.png',//abs beginner
    'assets/img/chest_beginner.png',//chest beginner
    'assets/img/arm_beginner.png',//arm beginner
    'assets/img/lower_body.jpeg',//leg beginner
    'assets/img/abs_intermediate.png',//shoulder beginner
    'assets/img/back_beginner.png',//back beginner
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

  List<int> exercise =[
    1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:Center(
        child:Container(
          child: ListView.builder(
            itemBuilder: (_,int index) => CardData(
              this.tileTitle[index],
              this.cardImageUrl[index],
              (MediaQuery.of(context).size.width)-10,
              0,
              this.exercise[index],
            ),
            itemCount: this.tileTitle.length,
          ),
        ),
      ),
    );
  }
}


