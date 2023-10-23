import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class BlogPost {
  BlogPost({
    required this.date,
    this.blurb = '',
    required this.body,
    this.tags = const [],
  });

  final String date;
  final String blurb;
  final String body;
  final List<String> tags;
}
