// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/generic_item.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Item extends StatefulWidget {
  const Item(this.item,
      // this.width,
      {super.key});

  final GenericItem item;
  // final double width;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  var _isExpanded = true;

  void toggleExpanded(isExpanded) {
    if (isExpanded == true) {
      setState(() {
        _isExpanded = false;
      });
    } else {
      setState(() {
        _isExpanded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // const int padding = 5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: Card(
            color: widget.item.color,
            elevation: 10,
            child: ExpansionTile(
              initiallyExpanded: _isExpanded,
              onExpansionChanged: toggleExpanded,
              maintainState: true,
              controlAffinity: ListTileControlAffinity.leading,
              trailing: Container(
                child: Image.asset(
                  widget.item.image,
                ),
              ),
              // shape: const OvalBorder(eccentricity: .1),
              title: Row(
                children: [
                  Flexible(
                    child: Text(widget.item.label,
                        // 'testing with a very long string of text in order to test the overflow settings! just trying to see what happens',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              expandedAlignment: Alignment.topLeft,
              children: <Widget>[
                // MarkdownBody(data: widget.item.mainText),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: MarkdownBody(
                    data: widget.item.expandedText,
                    // selectable: true,
                    onTapLink: (text, href, title) {
                      href != null ? launchUrlString(href) : null;
                    },
                    // selectable: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
