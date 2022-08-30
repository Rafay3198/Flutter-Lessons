import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
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
        color: Colors.purple,
        borderRadius: BorderRadius.circular(8)
        )
    );
  }
}