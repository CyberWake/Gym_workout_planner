import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/card.dart';

class Me extends StatefulWidget{
  @override
  _MeState createState()=> _MeState();
}

class _MeState extends State<Me>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Align(
          alignment: Alignment(1.0,-1.0),
          child: Row(
            children: <Widget>[
              CardData(
                  'Ritik',
                  'https://simpleactivity435203168.files.wordpress.com/2019/09/flutter-1024x486.png?w=1086',
                  (MediaQuery.of(context).size.width/2)-10,
                  205
              ),
              CardData(
                  'Ritik',
                  'https://novi.ba/storage/2018/05/29/5b0dc6e0-1400-4511-b0c0-3a5c0a0a0a67-unnamed.jpg',
                  (MediaQuery.of(context).size.width/2)-10
                  ,205
              ),
            ],
          ),
      ),
    );
  }
}
