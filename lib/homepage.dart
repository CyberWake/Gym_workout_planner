import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/hidden_drawer/screen_hidden_drawer.dart';
import 'package:hidden_drawer_menu/menu/item_hidden_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'src/firebase/account.dart';
import 'src/firebase/firestore.dart';
import 'src/screens/exercise.dart';
import 'src/screens/logout.dart';
import 'src/screens/me.dart';
import 'src/screens/tracking.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map userData = {};
  Accounts _account = Accounts();
  String imgUrl;

  Future setup(FirebaseUser user) async{
    userData = await AccountInfo(user).userInfo();
    imgUrl = await AccountInfo(user).getProfileImage();
  }

  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Exercises",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.teal,
        ),
        Exercise()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Tracking",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        Tracking()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Me",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        Me()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Logout",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 28.0 ),
          colorLineSelected: Colors.orange,
        ),
        Logout()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
            backgroundColorMenu: Colors.blueGrey,
            backgroundColorAppBar: Colors.cyan,
            screens: items,
            slidePercent: 60.0,
          );
  }
}
