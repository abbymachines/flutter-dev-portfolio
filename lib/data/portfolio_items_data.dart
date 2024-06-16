import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/generic_item.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';

final items = [
  GenericItem(
    label: 'Contact',
    mainText: "it's true i think!",
    expandedText: '''
  Hello! :) My name is Abby Castillo.

  I am a full-stack software engineer and interdisciplinary artist based in Portland, OR.

  email: abby.machines@gmail.com
  
  LinkedIn: https://www.linkedin.com/in/abbycc/
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
| LANGUAGES | FRONT-END |
| --- | --- |
| Python | Flutter |
| Dart | React.js |
| JavaScript | HTML |
| Java | CSS |
| Max/MSP | Processing |
| | P5 |
          

| BACK-END | OTHER SKILLS |
| --- | --- |
| Flask | REST APIs |
| PostgreSQL | Time/Space Complexity Analysis (Big O) |
| Firebase | microcontrollers (Arduino, Teensy) |
| SQLAlchemy | Git & GitHub |
|  | app deployment |
| | test-driven development (Pytest) |
| | Jupyter Notebooks |

| CREATIVE | SaaS |
| --- | --- |
| Ableton Live | Neon CRM |
| Figma | Mailchimp |
| Affinity Suite (Photo, Designer, Publisher) | Asana |
| Adobe Suite (Photoshop, Illustrator, InDesign) | Zoom |
| iMovie | Squarespace |
| DaVinci Resolve | Google Workspaces / Google Admin Console |
| Canva | eVoice |
| Tupi (animation software) |  |
'''),
  GenericItem(
      label: 'A (AR video series)',
      expandedText:
          "'A' is a series of AR videos made with Meta Spark Studio. Part of a 2023 Precipice Fund grant. Videos online at [TikTok](https://tiktok.com/@abbymachines).",
      color: Color.fromARGB(255, 255, 252, 252)),
  GenericItem(
      label: 'Tama Habits',
      expandedText:
          ''''**Tama Habits** is a habit tracker attached to a tamagotchi-style virtual pet. A demo of this app was first developed as my capstone project at the Ada Developers Academy. It is currently in development using **Flutter** for **Android**, **iOS**, and the **web**.

The app allows you to keep a list of habits and track their completion over time.

When habits are incomplete, the pet gets hungry and sick. Completing habits feeds the pet and makes it happier.

A public demo of this app will be available soon (November 2023) on this website as **Tama To-Do**. This demo will include limited features, functioning as a to-do list instead of a habit tracker.

![](assets/tamahabits0.png)
''',
      color: const Color.fromARGB(255, 255, 252, 252)),
  GenericItem(
      label: 'AbbyCastillo.dev',
      mainText: 'It\'s the little guy at the bottom of your screen!',
      expandedText:
          'The website you are currently visiting. :) Developed in **Flutter** and **Dart** for **web browsers**.',
      color: const Color.fromARGB(255, 255, 252, 252)),
  GenericItem(
      label: 'The Extent of Our Knowledge',
      expandedText:
          'Data visualization/sonification made with MAX M/S/P. Created as a project during the Creative Coding & Immersive Technologies program at Portland Community College. Documents weekly COVID deaths from 2020-2022 as audio and  [Video available on YouTube.](https://www.youtube.com/watch?v=xNiid90HxCQ)',
      color: const Color.fromARGB(255, 255, 252, 252)),
  GenericItem(
    label: 'Education',
    expandedText: '''**Ada Developers Academy**, full-stack web development

**Portland Community College**, Creative Coding & Immersive Technologies.

**Reed College**, Anthropology
''',
  )
];
