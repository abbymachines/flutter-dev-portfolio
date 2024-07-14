import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/data/blog_posts.dart';

import 'package:flutter_dev_portfolio/widgets/blog/blog_post_item.dart';
import 'package:flutter_dev_portfolio/models/blog.dart';

class BlogColumn extends StatelessWidget {
  const BlogColumn({required this.blog, super.key});

  final Blog blog;

  @override
  Widget build(context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Expanded(
        // child: ListView.builder(
        //   itemCount: blogPostData.length,
        //   itemBuilder: (ctx, index) => BlogPostItem(
        //       key: ValueKey(blogPostData[index]), blogPostData[index]),
        // ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: ListView.builder(
            itemCount: blogPostData.length,
            itemBuilder: (ctx, index) => BlogPostItem(
                key: ValueKey(blogPostData[index]), blogPostData[index]),
          ),
        ),
      ),
    );
  }
}
