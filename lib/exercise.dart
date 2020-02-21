import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Exercise extends StatefulWidget{
  @override
  _ExerciseState createState()=> _ExerciseState();
}

class _ExerciseState extends State<Exercise>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Center(
        child:ListView(
          children: <Widget>[
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/img/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/img/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/img/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/img/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/img/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/img/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
            Card(
                  child: Column(
                      children: <Widget>[
                        Image.asset('assets/img/flutter2.png'),
                        Text('Flutter')
                      ]
                  )
              ),
          ],
          itemExtent: 190,
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 10,
        backgroundColor: Theme.of(context).primaryColor,
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
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/exercise');
                  },
                ),
                ListTile(
                  leading: Icon(MdiIcons.chartLine, size: 40),
                  title: Text("Track"),
                  trailing: Chip(
                    label: Text("2",style: TextStyle(fontWeight: FontWeight.bold),),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/tracking');
                  },
                ),
                ListTile(
                  leading: FaIcon(FontAwesomeIcons.user, size: 38),
                  title: Text("Account"),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/me');
                  },
                ),
                Divider(),
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: ListTile(
                      leading:FaIcon(FontAwesomeIcons.cog, size: 40),
                      title: Text("Setting"),
                      onTap: (){
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/welcome');
                      },
                    ),
                  ),
                )
              ]
          )
      ),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          index: 0,
          height: 55,
          buttonBackgroundColor: Colors.grey,
          animationDuration: Duration(milliseconds:225),
          items: <Widget>[
            Icon(MdiIcons.yoga, size: 30),
            Icon(MdiIcons.chartLine, size: 30),
            Icon(MdiIcons.account, size: 30),
          ]
      ),
    );
  }
}