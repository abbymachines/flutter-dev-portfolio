import 'package:flutter/material.dart';

import 'package:flutter_dev_portfolio/models/pet.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';

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
      margin: EdgeInsets.all(0),
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.all(
        //   Radius.circular(25),
        // ),
        color: Color.fromARGB(255, 247, 233, 233),
      ),
      child: Row(
        children: [
          Text(_health.toString()),
          Image.asset(
            Images.sproutling,
            width: 70,
            height: 70,
          ),
          Text(
            'it\'s me, the ${widget.pet.creature}!',
          ),
          TextButton(onPressed: increaseHealth, child: const Text('feed me')),
        ],
      ),
    );
  }
}
