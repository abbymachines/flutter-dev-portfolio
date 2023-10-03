import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/widgets/item.dart';

class ItemList extends StatelessWidget {
  const ItemList(
      // this.label,
      {super.key});

  // final String label;

  @override
  Widget build(context) {
    return const Expanded(
      child: Column(
        children: [
          Item('shout out to flutter'),
          Item('shout out to Item'),
          Item('its me fr fr'),
        ],
      ),
    );
  }
}
