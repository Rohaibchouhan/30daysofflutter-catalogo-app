import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

// ignore: use_key_in_widget_constructors
class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog app"),
      ),
      body: Center(
        child: Text("To do list $days days $name"),
      ),
      drawer: MyDrawer(),
    );
    
  }
}
