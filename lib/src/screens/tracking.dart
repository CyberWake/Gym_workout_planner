import 'package:flutter/material.dart';
import 'package:ideaevaluator/src/Widget/statcard.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../Widget/showsteps.dart';

class Tracking extends StatefulWidget {
  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  Widget _stats(){
    return Container(
      height: 250,
      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: ListView(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          StatCard(
            title: 'Carbs',
            achieved: 200,
            total: 350,
            color: Colors.orange,
            image: Image.asset('assets/img/bolt.png', width: 20),
          ),
          StatCard(
            title: 'Protien',
            achieved: 350,
            total: 300,
            color: Theme.of(context).primaryColor,
            image: Image.asset('assets/img/fish.png', width: 20),
          ),
          StatCard(
            title: 'Fats',
            achieved: 100,
            total: 200,
            color: Colors.green,
            image: Image.asset('assets/img/sausage.png', width: 20),
          ),
        ],
      ),
    );
  }
  Widget _allStats({String title,String value,String unit}){
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '$title',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$value',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).accentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' $unit',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25, 30, 25, 25),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Theme.of(context).primaryColor.withAlpha(50),
                  ),
                  child: Image.asset(
                    'assets/img/shoe.png',
                    width: 60,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                ),
                ShowSteps(
                  steps: 6567,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '0 Steps'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            '9000 Steps'.toUpperCase(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      LinearPercentIndicator(
                        lineHeight: 8.0,
                        percent: 0.7,
                        animation: true,
                        animationDuration: 3500,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor:
                        Theme.of(context).accentColor.withAlpha(30),
                        progressColor: Theme.of(context).primaryColor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Text(
                        'Steps Taken'.toUpperCase(),
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: 'Bebas',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'You walked 165 min today',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      _allStats(title:'DISTANCE',value:'8500',unit:'m'),
                      _allStats(title:'CALORIES',value:'259',unit:'cal'),
                      _allStats(title:'HEART RATE',value:'80',unit:'bpm'),
                    ],
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.grey[300],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'DIET PROGRESS',
                      style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontSize: 24,
                        fontFamily: 'Bebas',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/img/down_orange.png',
                          width: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                        ),
                        Text(
                          '500 Calories',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                _stats(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




