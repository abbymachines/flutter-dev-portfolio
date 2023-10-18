import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class BlogPost {
  BlogPost({
    required this.date,
    required this.body,
    this.tags = const [],
  });

  final String date;
  final Markdown body;
  final List<String> tags;
}
