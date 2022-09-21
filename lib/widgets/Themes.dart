// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{

  
  
  static ThemeData lighttheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily,
      //textTheme: GoogleFonts.latoTextTheme() "prefectly work this line"
      appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      // ignore: prefer_const_constructors
      iconTheme: IconThemeData(color: Colors.black), 
      titleTextStyle: Theme.of(context).textTheme.headline6,
    )
  );


  
  static ThemeData darktheme(BuildContext context) => ThemeData(
    
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.lato().fontFamily,
  );


  
  static ThemeData redtheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.red,
      fontFamily: GoogleFonts.lato().fontFamily,
      //textTheme: GoogleFonts.latoTextTheme() "prefectly work this line"
    
  );


}    