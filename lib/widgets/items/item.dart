// import 'dart:html';

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
    return SizedBox(
      width: MediaQuery.of(context).size.width * .6,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 6.0, left: 6.0, right: 6.0, bottom: 6.0),
          child: ExpansionTile(
            title: MarkdownBody(data: widget.item.label),
            expandedAlignment: Alignment.topLeft,
            children: <Widget>[
              // MarkdownBody(data: widget.item.mainText),
              MarkdownBody(data: widget.item.expandedText),
            ],
          ),
        ),
      ),
    );
    // return Column(
    //   children: [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         SizedBox(
    //           width: MediaQuery.of(context).size.width * .60,
    //           child: InkWell(
    //             onTap: toggleExpanded,
    //             child: Container(
    //               color: widget.item.color,
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric(
    //                     horizontal: 20, vertical: 16),
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: [
    //                     Text(
    //                       widget.item.label,
    //                       style: const TextStyle(
    //                           fontSize: 21,
    //                           fontFamily: 'Helvetica',
    //                           fontWeight: FontWeight.w300),
    //                       textAlign: TextAlign.left,
    //                     ),
    //                     Text(
    //                       widget.item.mainText,
    //                       style: const TextStyle(
    //                           fontSize: 15,
    //                           color: Colors.black,
    //                           fontFamily: 'Consolas'),
    //                     ),
    //                     const SizedBox(height: 4),
    //                     Row(
    //                       children: [
    //                         Flexible(
    //                           fit: FlexFit.loose,
    //                           child: MarkdownBody(data: _expandedContent),
    //                         ),
    //                         const Spacer(),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         // Text('hello to you as well')
    //         Container(
    //           width: 100,
    //           height: 100,
    //           alignment: Alignment.bottomCenter,
    //           child: Image.asset(
    //             Images.sproutling,
    //           ),
    //         ),
    //       ],
    //     ),
    //     // SizedBox(height: 10),
    //   ],
    // );
  }
}
