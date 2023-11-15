import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PortfolioEntry {
  PortfolioEntry({
    required this.label,
    required this.expandedText,
    this.color = const Color.fromARGB(255, 148, 148, 148),
    this.style = const TextStyle(fontSize: 12, fontFamily: 'Times'),
    // required this.image,
  });

  final String label;
  final String expandedText;
  final Color color;
  final TextStyle style;
}
