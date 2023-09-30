import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item(this.label, {super.key});

  final String label;

  @override
  Widget build(context) {
    return Card(color: Colors.grey, child: Text(label));
  }
}
