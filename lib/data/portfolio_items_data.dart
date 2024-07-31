import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/generic_item.dart';
import 'package:flutter_dev_portfolio/constants/images.dart';

final items = [
  GenericItem(
    label: 'Contact',
    mainText: "it's true i think!",
    expandedText: '''
  Hello! :) My name is Abby Castillo.

  I am a full-stack software engineer and interdisciplinary artist based in Portland, OR.

  email: abby.machines@gmail.com

  GitHub: https://github.com/abbymachines
  
  LinkedIn: https://www.linkedin.com/in/abbycc/
  
  Artist C.V.: https://abbymachines.art/cv
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
| Python ![Python](assets/skills_icons/python.png) | Flutter ![Flutter](assets/skills_icons/flutter.png) |
| Dart ![Dart](assets/skills_icons/dart.png) | React.js |
| JavaScript | HTML |
| Java | CSS |
| Max/MSP | Processing |
| | P5 |
          

| BACK-END | OTHER SKILLS |
| --- | --- |
| Ruby on Rails | REST APIs |
| Flask | |
| PostgreSQL | Time/Space Complexity Analysis (Big O) |
| Firebase | microcontrollers (Arduino, Teensy) |
| SQLAlchemy | Git & GitHub |
|  | app deployment |
| | test-driven development (Pytest) |
| | Jupyter Notebooks |

| CREATIVE | SaaS |
| --- | --- |
| Ableton Live | Neon CRM | Jira |
| Figma | Mailchimp |
| Affinity Suite (Photo, Designer, Publisher) | Asana |
| Adobe Suite (Photoshop, Illustrator, InDesign) | Zoom |
| DaVinci Resolve | Google Workspaces | Canva |
'''),
  GenericItem(
      label: 'A (AR video series)',
      expandedText:
          "'A' is a series of AR videos made with Meta Spark Studio. Part of a 2023 Precipice Fund grant. Videos online at [TikTok](https://tiktok.com/@abbymachines).",
      color: const Color.fromARGB(255, 255, 252, 252)),
  GenericItem(
      label: 'Tama Habits',
      expandedText:
          ''''**Tama Habits** is a habit tracker attached to a tamagotchi-style virtual pet. A demo of this app was first developed as my capstone project at the Ada Developers Academy. It is currently in development using **Flutter** for **Android**, **iOS**, and the **web**.

The app allows you to keep a list of habits and track their completion over time.

When habits are incomplete, the pet gets hungry and sick. Completing habits feeds the pet and makes it happier.

![](assets/tamahabits0.png)
''',
      color: const Color.fromARGB(255, 255, 252, 252)),
  GenericItem(
      label: 'AbbyCastillo.dev',
      mainText: 'It\'s the little guy at the bottom of your screen!',
      expandedText:
          'The website you are currently visiting. :) Developed in **Flutter** and **Dart**.',
      color: const Color.fromARGB(255, 255, 252, 252)),
  GenericItem(
      label: 'The Extent of Our Knowledge',
      expandedText:
          'Data visualization/sonification made with MAX M/S/P. Created as a project during the Creative Coding & Immersive Technologies program at Portland Community College. Documents weekly COVID deaths from 2020-2022 as audio and visuals. [Video available on YouTube.](https://www.youtube.com/watch?v=xNiid90HxCQ)',
      color: const Color.fromARGB(255, 255, 252, 252)),
  GenericItem(label: 'wormchat', expandedText: '''
![screenshot of wormchat](assets/wormchat0.png)

Part of **One Thousand Machines v1.1**. Excerpted [from abbymachines.art](https://abbymachines.art/A/OneThousandMachines_v1-1/): *2022.5.2. This one is in lieu of my April report. I thought this time I would just embed wormchat (v1), my first attempt at an interactive chatbot. Building this has taught me a bit more about Markov chains, though I am still trying to wrap my head around them. You can see the source code (along with comments) at the following link: https://abbymachines.art/A/OneThousandMachines_v1-1/wormchat_v1/sketch.js.*
          '''),
  GenericItem(
    label: 'Education',
    expandedText: '''**Ada Developers Academy**, full-stack web development

**Portland Community College**, Creative Coding & Immersive Technologies.

**Reed College**, Anthropology
''',
  )
];
