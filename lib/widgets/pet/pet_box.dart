import 'package:flutter/material.dart';

import 'package:flutter_dev_portfolio/models/pet.dart';

class PetBox extends StatefulWidget {
  const PetBox(this.pet, {super.key});

  final Pet pet;

  @override
  State<PetBox> createState() => _PetBoxState();
}

class _PetBoxState extends State<PetBox> {
  var _health = 0;

  void increaseHealth() {
    setState(() {
      _health += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 247, 233, 233)),
      child: Row(
        children: [
          Text(_health.toString()),
          // Image.asset(
          //   'assets/sproutling0.png',
          //   width: 5,
          //   height: 5,
          // ),
          Text(
            'i am the silly little ${widget.pet.creature}',
          ),
          TextButton(onPressed: increaseHealth, child: const Text('feed me'))
        ],
      ),
    );
  }
}
