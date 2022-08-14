import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do list"),
      ),
      body: Center(
        child: Container(
          child: Text("To do list $days days $name"),
        ),
      ),
      drawer: Drawer(),
    );
    
  }
}
