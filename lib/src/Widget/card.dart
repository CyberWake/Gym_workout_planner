import 'package:flutter/material.dart';
import 'package:ideaevaluator/src/screens/dispexercise.dart';
import '../screens/dispexercise.dart';
import '../screens/me.dart';

class CardData extends StatefulWidget{
  final String tileTitle;
  final String cardImageUrl;
  final double widthSet;
  final double heightSet;
  final int exercise;
  CardData(this.tileTitle,this.cardImageUrl,this.widthSet,this.heightSet,this.exercise);
  @override
  _CardDataState createState()=> _CardDataState();
}
class _CardDataState extends State<CardData> {
  List <int> countE1=[
    20,16,10,8,8
  ];
  List <int> countE2=[
    30,12,12,12,12,12
  ];
  List <int> countE3=[
    1,2
  ];
  List <int> countE4=[
    20,16,10,8,8
  ];
  List <int> countE5=[
    30,12,12,12,12,12
  ];
  List <int> countE6=[
    20,16,10,8,8
  ];
  List <int> countE7=[
    30,12,12,12,12,12
  ];
  List <int> countE8=[
    20,16,10,8,8
  ];
  List <int> countE9=[
    30,12,12,12,12,12
  ];
  List <int> countE10=[
    20,16,10,8,8
  ];
  List <int> countE11=[
    30,12,12,12,12,12
  ];
  List <int> countE12=[
    20,16,10,8,8
  ];
  List <int> countE13=[
    30,12,12,12,12,12
  ];
  List <int> countE14=[
    20,16,10,8,8
  ];
  List <int> countE15=[
    30,12,12,12,12,12
  ];
  List <int> countE16=[
    20,16,10,8,8
  ];
  List <int> countE17=[
    30,12,12,12,12,12
  ];
  List <int> countE18=[
    20,16,10,8,8
  ];
  List <int> countE19=[
    30,12,12,12,12,12
  ];
  List <int> countE20=[
    20,16,10,8,8
  ];
  List <String> imagesE1 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE2 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE3 = [
    'assets/img/7.gif',
    'assets/img/10.gif'
  ];
  List <String> imagesE4 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE5 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE6 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE7 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE8 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE9 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE10 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE11 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE12 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE13 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE14 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE15 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE16 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE17 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE18 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> imagesE19 = [
    'assets/img/11.gif',
    'assets/img/1.gif',
    'assets/img/5.gif',
    'assets/img/5.gif',
    'assets/img/13.gif',
    'assets/img/4.gif'
  ];
  List <String> imagesE20 = [
    'assets/img/11.gif',
    'assets/img/6.gif',
    'assets/img/2.gif',
    'assets/img/10.gif',
    'assets/img/12.gif',
  ];
  List <String> exercisesE1 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exercisesE2 = [
    'JUMPING JACKS',
    'SQUATS',
    'SIDE LYING LEG LIFT LEFT',
    'SIDE LYING LEG LIFT RIGHT',
    'BACKWARD LUNGE',
    'DONKEY KICKS'
  ];
  List <String> exercisesE3 = [
    'RUSSIAN CROUCHES',
    'PUSH-UPS'
  ];
  List <String> exercisesE4 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exercisesE5 = [
    ' ',
    ' '
  ];
  List <String> exercisesE6 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exercisesE7 = [
    ' ',
    ' '
  ];
  List <String> exercisesE8 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exercisesE9 = [
    ' ',
    ' '
  ];
  List <String> exercisesE10 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exercisesE11 = [
    ' ',
    ' '
  ];
  List <String> exercisesE12 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exercisesE13 = [
    ' ',
    ' '
  ];
  List <String> exercisesE14 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exercisesE15 = [
    ' ',
    ' '
  ];
  List <String> exercisesE16 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exercisesE17 = [
    ' ',
    ' '
  ];
  List <String> exercisesE18 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  List <String> exerciseE19 = [
    ' ',
    ' '
  ];
  List <String> exercisesE20 = [
    'JUMPING JACKS',
    'INCLINE PUSH-UPS',
    'KNEE PUSH-UPS',
    'PUSH-UPS',
    'WIDE ARM PUSH-UPS'
  ];
  nextPage({String title,List <String> images,List <int> counts,List <String> exnames}){
    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Show(title,images,counts,exnames)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch(widget.exercise){
          case 1: nextPage(title:widget.tileTitle,images: imagesE1,counts: countE1,exnames: exercisesE1);
          break;
          case 2: nextPage(title:widget.tileTitle,images: imagesE2,counts: countE2,exnames: exercisesE2);
          break;
          case 3: nextPage(title:widget.tileTitle,images: imagesE3,counts: countE3,exnames: exercisesE3);
          break;
          case 4: nextPage(title:widget.tileTitle,images: imagesE4,counts: countE4,exnames: exercisesE4);
          break;
          case 5: nextPage(title:widget.tileTitle,images: imagesE5,counts: countE5,exnames: exercisesE5);
          break;
          case 6: nextPage(title:widget.tileTitle,images: imagesE6,counts: countE6,exnames: exercisesE6);
          break;
          case 7: nextPage(title:widget.tileTitle,images: imagesE7,counts: countE7,exnames: exercisesE7);
          break;
          case 8: nextPage(title:widget.tileTitle,images: imagesE8,counts: countE8,exnames: exercisesE8);
          break;
          case 9: nextPage(title:widget.tileTitle,images: imagesE9,counts: countE9,exnames: exercisesE9);
          break;
          case 10: nextPage(title:widget.tileTitle,images: imagesE10,counts: countE10,exnames: exercisesE10);
          break;
          case 11: nextPage(title:widget.tileTitle,images: imagesE11,counts: countE11,exnames: exercisesE11);
          break;
          case 12: nextPage(title:widget.tileTitle,images: imagesE12,counts: countE12,exnames: exercisesE12);
          break;
          case 13: nextPage(title:widget.tileTitle,images: imagesE13,counts: countE13,exnames: exercisesE13);
          break;
          case 14: nextPage(title:widget.tileTitle,images: imagesE14,counts: countE14,exnames: exercisesE14);
          break;
          case 15: nextPage(title:widget.tileTitle,images: imagesE15,counts: countE15,exnames: exercisesE15);
          break;
          case 16: nextPage(title:widget.tileTitle,images: imagesE16,counts: countE16,exnames: exercisesE16);
          break;
          case 17: nextPage(title:widget.tileTitle,images: imagesE17,counts: countE17,exnames: exercisesE17);
          break;
          case 18: nextPage(title:widget.tileTitle,images: imagesE18,counts: countE18,exnames: exercisesE18);
          break;
          case 19: nextPage(title:widget.tileTitle,images: imagesE19,counts: countE19,exnames: exerciseE19);
          break;
          case 20: nextPage(title:widget.tileTitle,images: imagesE20,counts: countE20,exnames: exercisesE20);
          break;
          case 21:print('pressed');
        }
      },
      child: Card(
        elevation: 0,
        margin: EdgeInsets.all(5.0),
        color: Colors.transparent,
        child: Container(
          height: widget.heightSet==0?150:widget.heightSet,
          width: widget.widthSet==0?null:widget.widthSet,
          decoration: new BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(22.0),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: 130,
                width: (MediaQuery.of(context).size.width)-30,
                child: Image.asset(
                  widget.cardImageUrl,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Text(widget.tileTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'poppins',
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}