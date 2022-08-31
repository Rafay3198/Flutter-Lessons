import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskers/Screens/Screens/HomeScreen.dart';
import 'package:taskers/Screens/Screens/Login.dart';
import 'package:taskers/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryColor: Colors.purple,
        primarySwatch: Colors.deepPurple
      ),
      // home: LoginScreen(),
      // initialRoute: "/login",
      routes: {
        AppRoutes.homeScreen: (context) => HomeScreen(),
        AppRoutes.loginScreen: (context) => LoginScreen()
      },
    );
  }
}
