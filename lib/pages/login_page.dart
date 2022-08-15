// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
         "Login page",
         style: TextStyle(
          fontSize: 27,
          color: Color.fromARGB(255, 255, 7, 7),
          fontWeight: FontWeight.bold,

         ), 
        ),
      ),
    );
  }
}
