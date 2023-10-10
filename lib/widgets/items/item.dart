import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/portfolio_item.dart';

class Item extends StatefulWidget {
  const Item(this.item, {super.key});

  final PortfolioItem item;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  var _isExpanded = false;

  void toggleExpanded() {
    if (_isExpanded == false) {
      setState(() {
        _isExpanded = true;
      });
    } else {
      setState(() {
        _isExpanded = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: toggleExpanded,
      child: Card(
        color: widget.item.color,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.item.label,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Flexible(
                      fit: FlexFit.loose,
                      child: Text((() {
                        if (_isExpanded) {
                          return widget.item.expandedText;
                        }

                        return "";
                      })())),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
