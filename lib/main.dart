import 'package:flutter/material.dart';

import 'package:flutter_dev_portfolio/models/blog.dart';
import 'package:flutter_dev_portfolio/data/blog_posts.dart';
import 'package:flutter_dev_portfolio/widgets/blog/blog_column.dart';

import 'package:flutter_dev_portfolio/widgets/items/item_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic _screenContent = const ItemList();
  // List _itemListExpandedIndices = [];

  void setBlogScreen() {
    setState(() {
      _screenContent = BlogColumn(blog: Blog(posts: blogPostData));
    });
  }

  void setPortfolioScreen() {
    setState(() {
      _screenContent = const ItemList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // final start = MediaQuery.of(context).size.width * .1;

    return MaterialApp(
      title: 'AbbyCastillo.Dev',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        body: Container(
          // decoration: const BoxDecoration(
          //     gradient: LinearGradient(
          //   colors: [
          //     Color.fromRGBO(0, 28, 175, 1),
          //     Color.fromRGBO(188, 189, 197, 1),
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // )),
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    (MediaQuery.of(context).size.width * .08), 0, 0, 0),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abby Castillo',
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    Text(
                      'full-stack web developer',
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _screenContent,
                    // PetBox(Pet(creature: 'sproutling', dialogues: petDialogues)),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 57, 84, 220)),
                      child: Row(
                        children: [
                          const Spacer(flex: 3),
                          TextButton(
                            onPressed: setBlogScreen,
                            child: const Text('BLOG',
                                style: TextStyle(color: Colors.white)),
                          ),
                          TextButton(
                            onPressed: setPortfolioScreen,
                            child: const Text(
                              'PORTFOLIO',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
