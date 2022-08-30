import 'package:flutter/material.dart';
import 'package:taskers/utils/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Center(
            child: Text("I am Drawer"),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Container(
              child: Text(
            "Home",
            style: TextStyle(),
          )),
        ),
        body: Center(
            child: ElevatedButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 60)),
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.loginScreen);
                },
                child: Text("Login"))));
  }
}
