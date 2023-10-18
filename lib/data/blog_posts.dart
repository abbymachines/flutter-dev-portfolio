import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/blog_post.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

final blogPostData = [
  BlogPost(
    date: '2023.10.17',
    body: const Markdown(
      data: 'believe it or not, george isnt at home',
    ),
  ),
  BlogPost(
    date: '2023.10.10',
    body: const Markdown(data: 'hello world :) hello to you'),
  ),
  BlogPost(
    date: 'anytime',
    body: const Markdown(data: 'lorum ipsums'),
  ),
];
