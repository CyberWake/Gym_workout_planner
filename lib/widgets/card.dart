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
        child: Container(
          height: heightSet==0?150:heightSet,
          width: widthSet==0?null:widthSet,
          decoration: new BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(22.0),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Image.asset(
                cardImageUrl,
                fit: BoxFit.fitHeight,
              ),
              Text(tileTitle,
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
    );
  }
}