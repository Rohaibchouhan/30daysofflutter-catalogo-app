import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1_awesome/models/catalog.dart';
import 'package:flutter_application_1_awesome/widgets/drawer.dart';
import 'package:flutter_application_1_awesome/widgets/item_widget.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 30;

  final String name = "flutter";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogjson = await rootBundle.loadString("assets/file/catalog.json");
    final decodedData = jsonDecode(catalogjson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog app"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:(CatalogModel.items.isNotEmpty)?
         ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: ((context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          }),
        ):
        const Center(
          child: CircularProgressIndicator(),
        ),
        
      ),
      drawer: const MyDrawer(),
    );
  }
}
