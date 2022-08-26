import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          
          child: Text(
            "Login Screen",
            style: TextStyle(
              fontSize: 18,
              color: Colors.teal,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
