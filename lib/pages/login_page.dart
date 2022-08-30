// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1_awesome/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: 
          Column(
            children: [
              Image.asset("assets/images/login.png",
              fit: BoxFit.cover,),
              SizedBox(
                height: 20),
              Text("Welcome",
              style: TextStyle(fontSize:28,
              fontWeight: FontWeight.bold
              ),
              ),
              
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "username",
                  ),
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
              ElevatedButton(
                // ignore: sort_child_properties_last
                child: Text("login"),
                style: TextButton.styleFrom(minimumSize: Size(150, 43)),
                onPressed:() {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                }, 
                )
                
              

                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}