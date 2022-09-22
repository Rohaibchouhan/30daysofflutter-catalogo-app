import 'package:flutter/material.dart';
import 'package:flutter_application_1_awesome/models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

// ignore: use_key_in_widget_constructors
class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "flutter";

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final dummylist = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: ((context, index) {
              return ItemWidget(
                item: dummylist[index],
              );
            }
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
