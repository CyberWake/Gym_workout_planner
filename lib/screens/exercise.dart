import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/card.dart';

class Exercise extends StatefulWidget{
  @override
  _ExerciseState createState()=> _ExerciseState();
}

class _ExerciseState extends State<Exercise>{
  List<String> cardImageUrl=[
    'assets/img/full_body.jpg',//full body
    'assets/img/abs_intermediate.png',//lower body
    'assets/img/abs_beginner.png',//abs beginner
    'assets/img/abs_intermediate.png',//chest beginner
    'assets/img/abs_intermediate.png',//arm beginner
    'assets/img/abs_intermediate.png',//leg beginner
    'assets/img/abs_intermediate.png',//shoulder beginner
    'assets/img/abs_intermediate.png',//back beginner
    'assets/img/abs_intermediate.png',//abs intermediate
    'assets/img/abs_intermediate.png',//chest intermediate
    'assets/img/arm_intermediate.png',//arm intermediate
    'assets/img/abs_intermediate.png',//leg intermediate
    'assets/img/abs_intermediate.png',//shoulder intermediate
    'assets/img/abs_intermediate.png',//back intermediate
    'assets/img/abs_intermediate.png',//abs advanced
    'assets/img/abs_intermediate.png',//chest advanced
    'assets/img/abs_intermediate.png',//arm advanced
    'assets/img/abs_intermediate.png',//leg advanced
    'assets/img/abs_intermediate.png',//shoulder advanced
    'assets/img/abs_intermediate.png',//back advanced
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
            itemBuilder: (_,int index) => CardData(this.tileTitle[index],this.cardImageUrl[index],(MediaQuery.of(context).size.width)-10,0),
            itemCount: this.tileTitle.length,
          ),
        ),
      ),
    );
  }
}


