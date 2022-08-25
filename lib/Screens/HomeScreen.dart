import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Center(child: Text("I am Drawer"),),),
      appBar: AppBar(
        title: Container(
          child: Center(child: Text("My App"))),
      ),
      body: Center(child: Text("Hi")),
    );
  }
}
