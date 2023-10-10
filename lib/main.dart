import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/widgets/items/header_item.dart';
import 'package:flutter_dev_portfolio/widgets/items/item_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AbbyCastillo.Dev',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text("Abby Castillo [dot] Dev")),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(0, 28, 175, 1),
              Color.fromRGBO(188, 189, 197, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          // width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ItemList(),
            ],
          ),
        ),
      ),
    );
  }
}
