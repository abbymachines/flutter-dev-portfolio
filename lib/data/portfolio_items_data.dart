import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/generic_item.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';

final items = [
  GenericItem(
    label: 'Hello! :) My name is Abby Castillo.',
    mainText: "it's true i think!",
    expandedText: '''
  I am a full-stack software developer and interdisciplinary artist based in Portland, OR. I am **currently looking for work!**
''',
    color: const Color.fromARGB(255, 255, 195, 15),
    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    image: Images.iconA0Small,
  ),
  GenericItem(
      label: 'Skills',
      mainText:
          'focusing on full-stack web development and mobile app development',
      expandedText: '''
## **LANGUAGES**:

  • Python

  • Dart

  • JavaScript

  • SQL

  • Dart

  • Java

  • Max MSP

  • Processing
  
  • P5
          
## **FRONT-END**: 

• React.js

• HTML

• CSS

• Flutter
          
## **OTHER SKILLS**:

• REST APIs

• git

• CRM databases

• app deployment

• data analysis

• database design

• test-driven development

• jupyter notebooks

• graphic design (Adobe Photoshop/Illustrator, Affinity Suite, Figma)'''),
  GenericItem(
      label: 'A (AR video series)',
      expandedText:
          "'A' is a series of AR videos made with Meta Spark Studio. Part of a 2023 Precipice Fund grant. Videos online at [TikTok](https://www.tiktok.com/@abbymachines)."),
  GenericItem(
      label: 'Tama Habits',
      expandedText:
          ''''**Tama Habits** is a habit tracker attached to a tamagotchi-style virtual pet. A demo of this app was first developed as my capstone project at the Ada Developers Academy. It is currently in development using **Flutter** for **Android**, **iOS**, and the **web**.

The app allows you to keep a list of habits and track their completion over time.

When habits are incomplete, the pet gets hungry and sick. Completing habits feeds the pet and makes it happier.

A public demo of this app will be available soon (November 2023) on this website as **Tama To-Do**. This demo will include limited features, functioning as a to-do list instead of a habit tracker.
'''),
  GenericItem(
      label: 'AbbyCastillo.dev',
      mainText: 'It\'s the little guy at the bottom of your screen!',
      expandedText:
          'The website you are currently visiting. :) Developed in **Flutter** and **Dart** for **web browsers**.'),
  GenericItem(
      label: 'The Extent of Our Knowledge',
      expandedText:
          'Data visualization/sonification made with MAX M/S/P. Created as a project during the Creative Coding & Immersive Technologies program at Portland Community College.'),
  GenericItem(
    label: 'Education',
    expandedText: '''**Ada Developers Academy**, full-stack web development

**Portland Community College**, Creative Coding & Immersive Technologies.

**Reed College**, Anthropology
''',
  )
];
