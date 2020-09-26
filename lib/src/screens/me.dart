import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../firebase/firestore.dart';
import 'dart:ui' as ui;
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

class Me extends StatefulWidget {

  final String title='Profile';

  @override
  _MeState createState() => new _MeState();
}

class _MeState extends State<Me> {
  dynamic imgUrl;
  Map userData = {};
  Future setup(FirebaseUser user) async{
    userData = await AccountInfo(user).userInfo();
    imgUrl = await AccountInfo(user).getProfileImage();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return FutureBuilder(
      future: setup(Provider.of<FirebaseUser>(context)),
      builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.none && snapshot.data == null){
          return Container(
            child: Center(child: Text("Loading"),),
          );
        }
        return Stack(
          children: <Widget>[
          Container(color: Colors.blue,),
          BackdropFilter(
              filter: ui.ImageFilter.blur(
                sigmaX: 6.0,
                sigmaY: 6.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color:  Colors.blue.withOpacity(0.9),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              )
          ),
          Align(
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: _height/12,),
                      CircleAvatar(radius:_width<_height? _width/4:_height/4, backgroundImage: NetworkImage(imgUrl == null ? 'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png' : imgUrl),),
                      SizedBox(height: 10,),
                      SizedBox(height: _height/25.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('${userData['userName']}', style: TextStyle(fontWeight: FontWeight.bold, fontSize: _width/15, color: Colors.white),),
                          IconButton(
                            icon: Icon(Icons.camera_enhance, size: 25,),
                            color: Colors.white70,
                            onPressed: () async{
                              dynamic image;
                              await ImagePicker.pickImage(source: ImageSource.gallery).then((img){
                                image = img;
                              });
                              if(image != null){
                                dynamic result = await AccountInfo(Provider.of<FirebaseUser>(context, listen: false)).changeProfileImage(image);
                                if(result != null){
                                  print(imgUrl);
                                  setState(() {
                                    imgUrl = result;
                                  });
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
        );
      },
    );
  }

  Widget rowCell(int count, String type) => Expanded(child: Column(children: <Widget>[
    Text('$count',style: TextStyle(color: Colors.white),),
    Text(type,style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal))
  ],));
}

