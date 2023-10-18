import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/portfolio_item.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Item extends StatefulWidget {
  const Item(this.item, {super.key});

  final GenericItem item;

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
                style: widget.item.style,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: MarkdownBody(
                      data: 'whomst',
                    ),
                    // Text(
                    //   (() {
                    //     if (_isExpanded) {
                    //       return widget.item.expandedText;
                    //     }

                    //     return "";
                    //   })(),
                    // )
                    // child: Markdown(() {
                    //   if (_isExpanded) {
                    //     return Mark
                    //   }
                    // }),
                  ),
                  const Spacer(),
                ],
              ),
              RichText(
                text: const TextSpan(
                  text: 'shout out to rich text ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'so tasty ',
                        style: TextStyle(fontWeight: FontWeight.normal)),
                    TextSpan(text: 'and so sweet'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
