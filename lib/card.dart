import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  final String tileTitle;
  final String cardImageUrl;
  final double widthSet;
  final double heightSet;
  CardData(this.tileTitle,this.cardImageUrl,this.widthSet,this.heightSet);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.0),
                  image:DecorationImage(
                    fit: BoxFit.cover,
                    image:NetworkImage(cardImageUrl),
                  ),
                ),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      Text(tileTitle[0]),
                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}