import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/generic_item.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';

final items = [
  GenericItem(
    label:
        'Hello! :) My name is *Abby Castillo*. I am a software developer and interdisciplinary artist based in Portland, OR.',
    mainText: "it's true i think!",
    expandedText:
        'I have several websites you can look at and also I have a linkedin and such. Lorem ipso facto badabing badaboom and etcetera as you know',
    color: const Color.fromARGB(255, 255, 195, 15),
    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  ),
  GenericItem(
      label: 'Skills',
      mainText:
          'focusing on full-stack web development and mobile app development',
      expandedText:
          '''Python / Dart / JavaScript / Flutter / React / SQL / Firebase / REST APIs'''),
  GenericItem(
      label: 'Habit Pet',
      expandedText:
          ''''**Wurm** is a habit tracker attached to a tamagotchi-style virtual pet. Currently in development using Flutter for Android, iOS, and the web.

The app allows you to keep a list of habits and track their completion over time.

When habits are incomplete, the pet gets hungry and sick. Completing habits feeds the pet and makes it happier.'''),
  GenericItem(
      label: 'Simple Pet',
      mainText: 'It\'s the little guy at the bottom of your screen!',
      expandedText: 'A work in progress. I promise I\'m working on it.'),
  GenericItem(
      label: 'A (AR video series)',
      expandedText:
          "'A' is a series of AR videos made with Meta Spark Studio."),
];
