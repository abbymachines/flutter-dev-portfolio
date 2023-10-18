import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class GenericItem {
  GenericItem({
    required this.label,
    required this.expandedText,
    this.color = const Color.fromARGB(255, 192, 192, 192),
    this.style = const TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
  }) : key = uuid.v4();

  final String label;
  final String expandedText;
  final Color? color;
  final TextStyle? style;
  final String key;
}
