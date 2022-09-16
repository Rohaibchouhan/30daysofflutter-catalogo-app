import 'package:flutter/material.dart';
import 'package:flutter_application_1_awesome/pages/home_page.dart';
import 'package:flutter_application_1_awesome/pages/login_page.dart';
import 'package:flutter_application_1_awesome/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
        //textTheme: GoogleFonts.latoTextTheme() "prefectly work this line"
      ),
    );
  }
}
