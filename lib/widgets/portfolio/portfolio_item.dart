import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/generic_item.dart';

import 'package:flutter_dev_portfolio/widgets/items/item.dart';
import 'package:flutter_dev_portfolio/models/blog_post.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';
import 'package:flutter_dev_portfolio/models/portfolio_entry.dart';

class PortfolioItem extends StatelessWidget {
  const PortfolioItem(this.item, {super.key});

  final PortfolioEntry item;

  @override
  Widget build(context) {
    return Item(
      GenericItem(
          label: item.label,
          expandedText: item.expandedText,
          color: Color.fromARGB(249, 123, 121, 255)),
    );
  }
}
