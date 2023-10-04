import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/widgets/items/item.dart';

const items = [
  'item',
  'the return of item',
  'the item strikes back',
  'infinity item',
  'item begins'
];

class ItemList extends StatelessWidget {
  const ItemList(
      // this.label,
      {super.key});

  // final String label;

  @override
  Widget build(context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) =>
            Item(key: ValueKey(items[index]), items[index]),
      ),
    );

    // return const Expanded(
    //   flex: 1,
    //   child: Column(
    //     children: [
    //       Item('shout out to flutter'),
    //       Item('shout out to Item'),
    //       Item('its me fr fr'),
    //       Item('another one'),
    //       Item('and another'),
    //       Item('and one yet more')
    //     ],
    //   ),
    // );
  }
}
