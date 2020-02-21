import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter_app/tracking.dart';
import 'exercise.dart';
import 'tracking.dart';
import 'me.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fitness App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color(0XFF6D3FFF),
          accentColor: Color(0XFF233C63),
          fontFamily: 'Poppins',
        ),
        home:Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title:Text("Fitness App"),
            backgroundColor: Colors.lightBlue,
          ),
          drawer: Drawer(
              child: Column(
                  children: <Widget>[
                    UserAccountsDrawerHeader(
                      accountEmail: Text("ritikfbd@gmail.com"),
                      accountName: Text("Ritik Kumar Srivastava"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/44184786?s=460&v=4"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    ListTile(
                      leading: Icon(MdiIcons.yoga, size: 40),
                      title: Text("Exercise"),
                    ),
                    ListTile(
                      leading: Icon(MdiIcons.chartLine, size: 40),
                      title: Text("Track"),
                      trailing: Chip(
                        label: Text("2",style: TextStyle(fontWeight: FontWeight.bold),),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ),
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.user, size: 38),
                      title: Text("Account"),
                    ),
                    Divider(),
                    Expanded(
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: ListTile(
                          leading:FaIcon(FontAwesomeIcons.cog, size: 40),
                          title: Text("Setting"),
                        ),
                      ),
                    )
                  ]
              )
          ),
          body:Welcome(),
        )
    );
  }
}