import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Center(child: Text("I am Drawer"),),),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Container(
          child:  Text("Home",
            style: TextStyle(
            ),
          )
          ),
      ),
      body: Center(child: Text("Home Page",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 19,
          fontWeight: FontWeight.bold
        ),
      )),
    );
  }
}
