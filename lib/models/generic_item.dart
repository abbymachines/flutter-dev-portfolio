import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';

const uuid = Uuid();
final defaultImage = Image.asset(Images.sproutling);

class GenericItem {
  GenericItem({
    required this.label,
    this.mainText = '',
    required this.expandedText,
    this.color = const Color.fromARGB(255, 192, 192, 192),
    this.style = const TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
    this.image = 'sproutling',
  }) : key = uuid.v4();

  final String label;
  final String mainText;
  final String expandedText;
  final Color? color;
  final TextStyle? style;
  final String key;
  final String? image;
}
