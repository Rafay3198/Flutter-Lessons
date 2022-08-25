import 'package:flutter/material.dart';
import 'package:taskers/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}