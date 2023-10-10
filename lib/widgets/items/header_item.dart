import 'package:flutter/material.dart';

class HeaderItem extends StatelessWidget {
  const HeaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: const Color.fromARGB(255, 192, 192, 192),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Hello! :) My name is Abby Castillo. I am a software developer and interdisciplinary artist based in Portland, OR.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Spacer(),
                  Flexible(child: Text((() {
                    if (true) {
                      return "";
                    }

                    return "i never show up!";
                  })())),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
