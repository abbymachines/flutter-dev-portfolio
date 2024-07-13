import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:flutter_dev_portfolio/models/portfolio.dart';
import '../../../data/portfolio_items_data.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ItemList extends StatelessWidget {
  const ItemList(
      {
      //   required this.onExpansionChanged,
      // required this.expandedIndices,
      // required this.width,
      super.key});

  // final Function onExpansionChanged;
  // final List expandedIndices;
  // final double width;

  @override
  Widget build(context) {
    List expandedIndices = [];
    for (final index in Iterable.generate(items.length)) {
      if (index != 1) {
        expandedIndices.add(index);
      }
    }
    double width = MediaQuery.of(context).size.width * .9;

    return Expanded(
      child: SizedBox(
        width: width,
        // height: MediaQuery.of(context).size.height,
        child: ListView.separated(
          // physics: ClampingScrollPhysics(),
          itemCount: items.length,
          shrinkWrap: true,
          separatorBuilder: (ctx, index) {
            return const SizedBox(height: 10);
          },
          itemBuilder: (ctx, index) =>
              // Item(key: ValueKey(items[index]), items[index]),
              Card(
            color: items[index].color,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
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
                  title: Row(
                    children: [
                      Flexible(
                        child: Text(
                          items[index].label,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                        onTapLink: (text, href, title) {
                          href != null ? launchUrlString(href) : null;
                        },
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
