import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/blog_post.dart';
import 'package:flutter_dev_portfolio/models/portfolio_entry.dart';

class Portfolio {
  Portfolio({
    required this.entries,
  });

  final List<PortfolioEntry> entries;
}
