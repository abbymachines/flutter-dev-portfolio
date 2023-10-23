import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/generic_item.dart';

import 'package:flutter_dev_portfolio/widgets/items/item.dart';
import 'package:flutter_dev_portfolio/models/blog_post.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';

class BlogPostItem extends StatelessWidget {
  const BlogPostItem(this.post, {super.key});

  final BlogPost post;

  @override
  Widget build(context) {
    return Item(
      GenericItem(
        label: post.date,
        mainText: post.blurb,
        expandedText: post.body,
        color: const Color.fromARGB(250, 213, 121, 255),
        image: Image.asset(
          Images.sproutling,
          width: 5,
          height: 5,
        ),
      ),
    );
  }
}
