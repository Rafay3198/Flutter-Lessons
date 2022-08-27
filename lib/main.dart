import 'package:flutter/material.dart';
import 'package:taskers/Screens/Screens/HomeScreen.dart';
import 'package:taskers/Screens/Screens/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // fontFamily: GoogleFonts.lato().fontFamily
      // ),
      // home: LoginScreen(),
      // initialRoute: "/login",
      routes: {
        "/": (context) => LoginScreen(),
        "/login": (context) => LoginScreen()
      },
    );
  }
}
