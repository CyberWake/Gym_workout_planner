import 'package:flutter/material.dart';
import 'package:flutter_app/tracking.dart';
import 'exercise.dart';
import 'tracking.dart';
import 'me.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title:Text("test app"),
          backgroundColor: Colors.lightBlue,
        ),
        body:Exercise(),
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            index: 0,
            height: 55,
            buttonBackgroundColor: Colors.white,
            animationDuration: Duration(milliseconds:225),
            items: <Widget>[
              Icon(MdiIcons.yoga, size: 30),
              Icon(MdiIcons.trendingUp, size: 30),
              Icon(MdiIcons.account, size: 30),
            ]
        ),
      )
    );
  }
}