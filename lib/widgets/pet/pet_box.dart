import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_dev_portfolio/models/pet.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';
import 'package:flutter_dev_portfolio/data/simple_pet_speech.dart';

class PetBox extends StatefulWidget {
  const PetBox(this.pet, {super.key});

  final Pet pet;

  @override
  State<PetBox> createState() => _PetBoxState();
}

class _PetBoxState extends State<PetBox> {
  var _health = 0;
  var _speech = 'welcome to abbymachines dot dev 🥰 i sure am hungry 😬';
  var _speechIndex = 0;
  final dialoguesLength = petDialogues.length;

  void increaseHealth() {
    setState(() {
      _health += 1;
    });
  }

  void selectSpeech() {
    setState(() {
      _speechIndex = Random().nextInt(dialoguesLength);
      _speech = widget.pet.dialogues[_speechIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    // final speechLength = widget.pet.dialogues;
    return Container(
      margin: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.all(
        //   Radius.circular(25),
        // ),
        color: Color.fromARGB(255, 247, 233, 233),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_health.toString()),
          Image.asset(
            Images.sproutling,
            width: 70,
            height: 70,
          ),
          Text(
            _speech,
          ),
          TextButton(onPressed: selectSpeech, child: const Text('feed me')),
        ],
      ),
    );
  }
}
