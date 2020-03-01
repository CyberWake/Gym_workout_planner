import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  final String tileTitle;
  final String cardImageUrl;
  final double widthSet;
  final double heightSet;
  CardData(this.tileTitle,this.cardImageUrl,this.widthSet,this.heightSet);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        margin: EdgeInsets.all(5.0),
        color: Colors.transparent,
        child: Column(
            children: <Widget>[
              Container(
                height: heightSet==0?150:heightSet,
                width: widthSet==0?null:widthSet,
                decoration: new BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: Center(
                  child:Text(tileTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'poppins',
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ]
        )
    );
  }
}