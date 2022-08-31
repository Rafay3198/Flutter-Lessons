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

  final _formKey = GlobalKey<FormState>();

  _validate(BuildContext context) {
    if(_formKey.currentState!.validate()){

    }
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;

    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Image.asset(
                "assets/images/hey.png",
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
                    validator: (value) {
                      if(value!.isEmpty) return "Username cannot be empty";
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
                    validator: (value) {
                      if(value!.isEmpty) return "Password cannot be empty";
                      else if(value.length < 6) return "Password length should be atleast 6";
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
      
                  Material(
                    child: InkWell(
                      onTap: () => _validate(context),
                      // onTap: () => Navigator.pop(context),
                      splashColor: Colors.red,
                      child: AppButton()),
                  )
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
      ),
    ));
  }
}
