import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'exercise.dart';
import 'tracking.dart';
import 'me.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  String drawerImage = 'https://ak9.picdn.net/shutterstock/videos/1024107419/thumb/1.jpg';
  String accountImage = 'https://avatars2.githubusercontent.com/u/44184786?s=460&v=4';
  final Exercise _exercise = Exercise();
  final Tracking _tracking = Tracking();
  final Me _me = Me();
  Widget _showPage = Exercise();
  Widget _pageChanger(int page){
    switch(page){
      case 0:
        return _exercise;
        break;
      case 1:
        return _tracking;
        break;
      case 2:
        return _me;
        break;
      default: Text('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        bottomNavigationBar: new CurvedNavigationBar(
          index: pageIndex,
          height: 55,
          animationDuration: Duration(milliseconds: 225),
          color: Colors.grey,
          items: <Widget>[
            Icon(MdiIcons.yoga, size: 30),
            Icon(MdiIcons.chartLine, size: 30),
            Icon(MdiIcons.account, size: 30),
          ],
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChanger(tappedIndex);
            });
          },
        ),
        appBar: AppBar(
          elevation: 0,
          titleSpacing: 10,
          backgroundColor: Theme
              .of(context)
              .primaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(accountImage),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'CyberWake',
                    style: TextStyle(
                      color: Theme
                          .of(context)
                          .accentColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Feb 25, 2020',
                    style: TextStyle(
                      color: Theme
                          .of(context)
                          .accentColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {},
              child: new Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    width: 50,
                    child: Icon(
                      Icons.notifications,
                      color: Theme
                          .of(context)
                          .accentColor,
                      size: 35,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    width: 20,
                    height: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.red,
                      ),
                      width: 20,
                      height: 20,
                      child: Center(
                        child: Text(
                          '02',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        drawer: Drawer(

            child: Column(
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(drawerImage),
                      ),
                    ),
                    accountEmail:
                    Text("ritikfbd@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    accountName:
                    Text("Ritik Kumar Srivastava",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatars2.githubusercontent.com/u/44184786?s=460&v=4'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                  ),
                  ListTile(
                    leading: Icon(MdiIcons.yoga, size: 40),
                    title: Text("Exercise", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).pop();
                        pageIndex = 0;
                        _showPage = _pageChanger(0);
                      });
                    },
                  ),
                  ListTile(
                    leading: Icon(MdiIcons.chartLine, size: 40),
                    title:
                    Text("Track", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    trailing: Chip(
                      label: Text(
                        "2", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      backgroundColor: Theme
                          .of(context)
                          .accentColor,
                    ),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).pop();
                        pageIndex = 1;
                        _showPage = _pageChanger(1);
                      });
                    },
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.user, size: 38),
                    title: Text("Account",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).pop();
                        pageIndex = 2;
                        _showPage = _pageChanger(2);
                      });
                    },
                  ),
                  Divider(),
                  Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: ListTile(
                        leading: FaIcon(FontAwesomeIcons.cog, size: 40),
                        title: Text("Setting",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () => Navigator.pushNamed(context, '/loginpage'),
                      ),
                    ),
                  )
                ]
            )
        ),
        body: Container(
          color: Colors.black87,
          child: Center(
            child: _showPage,
          ),
        ),
      );
  }
}