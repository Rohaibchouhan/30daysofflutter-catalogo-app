import 'package:flutter/material.dart';
import 'package:flutter_application_1_awesome/pages/home_page.dart';
import 'package:flutter_application_1_awesome/pages/login_page.dart';
import 'package:flutter_application_1_awesome/utils/routes.dart';
import 'package:flutter_application_1_awesome/widgets/Themes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const Homepage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      // darkTheme: MyTheme.darktheme(context),
      // theme: MyTheme.lighttheme(context),
      theme: MyTheme.redtheme(context),
      

    );
  }
}
