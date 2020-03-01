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
      backgroundColor: Colors.white,
      body:Align(
          alignment: Alignment(1.0,-1.0),
          child: Row(
            children: <Widget>[
              CardData(
                  'Ritik',
                  'assets/img/flutter.png',
                  (MediaQuery.of(context).size.width/2)-10,
                  205
              ),
              CardData(
                  'Ritik',
                  'assets/img/flutter.png',
                  (MediaQuery.of(context).size.width/2)-10
                  ,205
              ),
            ],
          ),
      ),
    );
  }
}
