import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/widgets/item_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First App',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar:
            AppBar(title: const Text("Abby's yummy & delicious dev portfolio")),
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hello! :) My name is Abby Castillo. I am a software developer and interdisciplinary artist based in Portland, OR.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Wurm is a habit tracker attached to a tamagotchi-style virtual pet. Currently in development using Flutter for Android, iOS, and the web. The app allows you to keep a list of habits and track their completion over time. When habits are incomplete, the pet gets hungry and sick. Completing habits feeds the pet and makes it happier.',
                textAlign: TextAlign.center,
              ),
              ItemList(),
            ], // ❤️ LEFT OFF HERE
          ),
        ),
      ),
    );
  }
}
