import 'package:flutter/material.dart';
import '../firebase/account.dart';

class Logout extends StatefulWidget {
  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  Accounts _account = Accounts();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text('Alert'),
      content: Text('Do you Really want to Logout'),
      actions: <Widget>[
        RaisedButton(
          onPressed: () async{
            dynamic result = await _account.signOut();
            if (result != null) {
              Navigator.of(context).pushReplacementNamed('/home');
            }
          },
          child: Text('No'),
        ),
        RaisedButton(
          onPressed: () async{
            dynamic result = await _account.signOut();
            if (result != null) {
              Navigator.of(context).pushReplacementNamed('/welcome');
            }
        },
          child: Text('Yes'),
        )
      ],
    );
  }
}
