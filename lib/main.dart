import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../AndroidStudioProjects/tik_tiok_ui/lib/src/pages/loginPage.dart';
import '../../../AndroidStudioProjects/tik_tiok_ui/lib/src/pages/signup.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
import 'welcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    return StreamProvider<FirebaseUser>.value(
      value: Accounts().account,
      child: MaterialApp(
        routes: {
          '/home' : (context) => HomePage(),
          '/welcome' : (context) => WelcomePage(),
          '/signup' : (context) => SignUpPage(),
          '/login' : (context) => LoginPage()
        },
        title: 'Gym Workout Planner',
        theme: ThemeData(
           primarySwatch: Colors.blue,
           textTheme:GoogleFonts.latoTextTheme(textTheme).copyWith(
             body1: GoogleFonts.montserrat(textStyle: textTheme.body1),
           ),
        ),
        debugShowCheckedModeBanner: false,
        home: WelcomePage(),
      ),
    );
  }
}