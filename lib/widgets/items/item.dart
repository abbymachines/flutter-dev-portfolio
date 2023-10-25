import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/generic_item.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';

class Item extends StatefulWidget {
  const Item(this.item, {super.key});

  final GenericItem item;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  var _isExpanded = false;
  var _expandedContent = '';

  void toggleExpanded() {
    if (_isExpanded == false) {
      setState(() {
        _isExpanded = true;
        _expandedContent = widget.item.expandedText;
      });
    } else {
      setState(() {
        _isExpanded = false;
        _expandedContent = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 225,
          child: InkWell(
            onTap: toggleExpanded,
            child: Card(
              color: widget.item.color,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.item.label,
                      style: widget.item.style,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      widget.item.mainText,
                      style: const TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: MarkdownBody(data: _expandedContent),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Text('hello to you as well')
        Container(
          width: 100,
          height: 100,
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            Images.sproutling,
          ),
        ),
      ],
    );
  }
}
