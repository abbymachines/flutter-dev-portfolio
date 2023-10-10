import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PortfolioItem {
  PortfolioItem({
    required this.label,
    required this.expandedText,
    this.color = const Color.fromARGB(255, 192, 192, 192),
    this.style,
  }) : key = uuid.v4();

  final String label;
  final String expandedText;
  final Color? color;
  final String? style;
  final String key;
}
