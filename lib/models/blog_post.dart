import 'package:flutter/material.dart';

class BlogPost {
  BlogPost({
    required this.date,
    required this.body,
    this.tags = const [],
  });

  final String date;
  final String body;
  final List<String> tags;
}
