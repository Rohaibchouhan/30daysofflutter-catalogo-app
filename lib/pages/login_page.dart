// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1_awesome/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "username",
                    ),
                    onChanged: ((value) {
                      name = value;
                      setState(() {});
                    }),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "password",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 44 : 150, height: 42,
                      alignment: Alignment.center,
                      // ignore: sort_child_properties_last
                      child: changeButton?
                      Icon(
                        Icons.done,
                        color: Colors.white,
                      ):
                          Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontSize: 17),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(changeButton? 44: 25)
                          ),
                    ),
                  ),

//                  ElevatedButton(
//                    // ignore: sort_child_properties_last
//                    child: Text("login"),
//                    style: TextButton.styleFrom(minimumSize: Size(150, 43)),
//                    onPressed: () {
//                      Navigator.pushNamed(context, MyRoutes.homeRoute);
//                    },
//                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
