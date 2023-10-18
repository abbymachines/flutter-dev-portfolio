import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/portfolio_item.dart';

final items = [
  GenericItem(
      label:
          'Hello! :) My name is Abby Castillo. I am a software developer and interdisciplinary artist based in Portland, OR.',
      expandedText:
          'I have several websites you can look at and also I have a linkedin and such. Lorem ipso facto badabing badaboom and etcetera as you know',
      color: Color.fromARGB(255, 255, 195, 15),
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
  GenericItem(label: 'Habit Pet', expandedText: 'who woulda thunk'),
  GenericItem(
      label: 'A',
      expandedText:
          "'A' is a series of AR videos made with Meta Spark Studio."),
  GenericItem(
      label: 'Skills',
      expandedText:
          'Flutter / React / Kotlin(?) / Flask / SQL / REST APIs / full-stack development'),
  GenericItem(label: 'infinity item', expandedText: 'end item'),
  GenericItem(
      label: 'item begins',
      expandedText: 'the gritty dark reboot of the item you know and love'),
  GenericItem(
      label: 'i cant believe its not item', expandedText: 'item? unlikely'),
  GenericItem(
      label: 'arent you happy i didnt say item',
      expandedText: 'Q: KNOWCK KNOCK A: who care'),
  GenericItem(
      label: 'items are nice items are cool',
      expandedText: 'i love to carry around whenevere im in school'),
  GenericItem(
      label: 'hello hello hello', expandedText: 'GOODBYE GOODBYE GOODBYE'),
];
