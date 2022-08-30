import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskers/Widgets/AppButton.dart';
import 'package:taskers/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  String name = "";

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Image.asset(
              "assets/images/login.png",
              fit: BoxFit.contain,
            ),
          ),
          Text(
            "Welcome $name",
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
                  onChanged: (value) { 
                    setState(() {
                      name = value;
                    });
                    
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
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

                GestureDetector(
                  // onTap: () => {},
                  onTap: () => Navigator.pop(context),
                  child: AppButton())
                // ElevatedButton(
                //     style: TextButton.styleFrom(
                //         backgroundColor: Colors.blue,
                //         padding:
                //             EdgeInsets.symmetric(vertical: 10, horizontal: 60)),
                //     onPressed: () {
                //       Navigator.pop(context);
                //     },
                //     child: Text("Login"))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
