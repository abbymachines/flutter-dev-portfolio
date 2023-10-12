import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/portfolio_item.dart';

import 'package:flutter_dev_portfolio/widgets/items/item.dart';
import 'package:flutter_dev_portfolio/models/blog_post.dart';

class BlogPostItem extends StatelessWidget {
  const BlogPostItem(this.post, {super.key});

  final BlogPost post;

  @override
  Widget build(context) {
    return Item(
      PortfolioItem(
          label: post.date,
          expandedText: post.body,
          color: const Color.fromARGB(250, 213, 121, 255)),
    );
  }
}
