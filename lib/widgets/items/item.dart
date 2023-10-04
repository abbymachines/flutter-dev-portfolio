import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item(this.label, {super.key});

  final String label;

  @override
  Widget build(context) {
    return InkWell(
      onTap: () => print(label),
      child: Card(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Spacer(),
                  Text(label),
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
