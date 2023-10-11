import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/portfolio_item.dart';

final items = [
  PortfolioItem(
      label:
          'Hello! :) My name is Abby Castillo. I am a software developer and interdisciplinary artist based in Portland, OR.',
      expandedText:
          'I have several websites you can look at and also I have a linkedin and such. Lorem ipso facto badabing badaboom and etcetera as you know',
      color: Color.fromARGB(255, 255, 195, 15),
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
  PortfolioItem(label: 'Habit Pet', expandedText: 'who woulda thunk'),
  PortfolioItem(
      label: 'A',
      expandedText:
          "'A' is a series of AR videos made with Meta Spark Studio."),
  PortfolioItem(
      label: 'Skills',
      expandedText:
          'Flutter / React / Kotlin(?) / Flask / SQL / REST APIs / full-stack development'),
  PortfolioItem(label: 'infinity item', expandedText: 'end item'),
  PortfolioItem(
      label: 'item begins',
      expandedText: 'the gritty dark reboot of the item you know and love'),
  PortfolioItem(
      label: 'i cant believe its not item', expandedText: 'item? unlikely'),
  PortfolioItem(
      label: 'arent you happy i didnt say item',
      expandedText: 'Q: KNOWCK KNOCK A: who care'),
  PortfolioItem(
      label: 'items are nice items are cool',
      expandedText: 'i love to carry around whenevere im in school'),
  PortfolioItem(
      label: 'hello hello hello', expandedText: 'GOODBYE GOODBYE GOODBYE'),
];
