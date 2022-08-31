import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 40,
      alignment: Alignment.center,
      // color: Colors.purple,
      child: Text("Login",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.white
          ),
      ),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20)
        )
    );
  }
}