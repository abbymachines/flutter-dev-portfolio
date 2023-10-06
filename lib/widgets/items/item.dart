import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item(this.label, {super.key});

  final String label;
  // final Widget? child;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  double _size = 1.0;

  void grow() {
    setState(() {
      _size += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: grow,
      child: Card(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.label,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.justify,
              ),
              Text(_size.toString()),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Spacer(),
                  Text(widget.label),
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

// import 'package:flutter/material.dart';

// class Item extends StatefulWidget {
//   const Item(this.label, {super.key});

//   final String label;

//   @override
  

//   @override
//   Widget build(context) {
    
//   }
// }
