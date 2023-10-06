import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PortfolioItem {
  PortfolioItem({
    required this.label,
    required this.expandedText,
  }) : key = uuid.v4();

  final String label;
  final String expandedText;
  final String key;
}
