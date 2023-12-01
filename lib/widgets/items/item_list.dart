import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/widgets/items/header_item.dart';
import 'package:flutter_dev_portfolio/widgets/items/item.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:flutter_dev_portfolio/models/portfolio.dart';
import '../../../data/portfolio_items_data.dart';

class ItemList extends StatelessWidget {
  const ItemList(
      {
      //   required this.onExpansionChanged,
      // required this.expandedIndices,
      super.key});

  // final Function onExpansionChanged;
  // final List expandedIndices;

  @override
  Widget build(context) {
    List expandedIndices = [];
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width * .6,
        child: ListView.separated(
          // physics: ClampingScrollPhysics(),
          itemCount: items.length,
          shrinkWrap: true,
          separatorBuilder: (ctx, index) {
            return const SizedBox(height: 5);
          },
          itemBuilder: (ctx, index) =>
              // Item(key: ValueKey(items[index]), items[index]),
              Card(
            color: items[index].color,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTile(
                maintainState: true,
                onExpansionChanged: (expanded) {
                  if (expanded) {
                    expandedIndices.add(index);
                  } else {
                    expandedIndices.remove(index);
                  }
                },
                initiallyExpanded: expandedIndices.contains(index),
                controlAffinity: ListTileControlAffinity.leading,
                trailing: Container(
                  child: Image.asset(
                    items[index].image,
                  ),
                ),
                shape: OvalBorder(eccentricity: .5),
                title: Row(
                  children: [
                    Text(
                      items[index].label,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                expandedAlignment: Alignment.topLeft,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: MarkdownBody(
                      data: items[index].expandedText,
                      selectable: true,
                    ),
                    // child: RichText(
                    // text: TextSpan(
                    //     text: 'Hello',
                    //     style: DefaultTextStyle.of(context).style,
                    //     children: const <TextSpan>[
                    //       TextSpan(
                    //           text: 'bold',
                    //           style: TextStyle(fontWeight: FontWeight.bold)),
                    //       TextSpan(text: 'world!'),
                    //     ]),
                  ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
