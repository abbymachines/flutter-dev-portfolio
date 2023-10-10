import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/widgets/items/header_item.dart';
import 'package:flutter_dev_portfolio/widgets/items/item.dart';
// import 'package:flutter_dev_portfolio/models/portfolio.dart';
import 'package:flutter_dev_portfolio/data/portfolio_items_data.dart';

class ItemList extends StatelessWidget {
  const ItemList(
      // this.label,
      {super.key});

  // final String label;

  @override
  Widget build(context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) =>
            Item(key: ValueKey(items[index]), items[index]),
      ),
    );
  }
}
