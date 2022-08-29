import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Image.asset("assets/images/login.png", 
            fit: BoxFit.contain,
            ),
          ),
          Text("Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              children: [
                TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username"
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 60)
              ),
              onPressed: () {}, child: Text("Login"))  
              ],
            ),
          )

        ],
      )
    );
  }
}
