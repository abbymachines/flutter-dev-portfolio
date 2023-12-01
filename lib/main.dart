import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/data/simple_pet_speech.dart';

import 'package:flutter_dev_portfolio/models/blog.dart';
import 'package:flutter_dev_portfolio/data/blog_posts.dart';
import 'package:flutter_dev_portfolio/widgets/blog/blog_column.dart';

import 'package:flutter_dev_portfolio/widgets/items/item_list.dart';
import 'package:flutter_dev_portfolio/widgets/pet/pet_box.dart';
import 'package:flutter_dev_portfolio/models/pet.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic _screenContent = ItemList();
  List _itemListExpandedIndices = [];

  void setBlogScreen() {
    setState(() {
      _screenContent = BlogColumn(blog: Blog(posts: blogPostData));
    });
  }

  void setPortfolioScreen() {
    setState(() {
      _screenContent = ItemList();
    });
  }

  // void onExpandItemListCard(expanded) {
  //   if (expanded) {

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AbbyCastillo.Dev',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     "Abby Castillo [dot] Dev",
        //     style: TextStyle(fontSize: 10),
        //   ),
        //   toolbarHeight: 30,
        // ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromRGBO(0, 28, 175, 1),
              Color.fromRGBO(188, 189, 197, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
          // width: double.infinity,
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //             Markdown(data: """
              // # This is a Heading 1
              // ## This is a Heading 2
              // This is a paragraph with some *italic* and **bold** text.
              // - This is a bullet point
              // - Another bullet point
              // 1. This is a numbered list
              // 2. Another numbered item
              // """),
              _screenContent,
              // PetBox(Pet(creature: 'sproutling', dialogues: petDialogues)),
              Container(
                decoration: BoxDecoration(color: Colors.lime),
                child: ButtonBar(
                  children: [
                    TextButton(
                        onPressed: setBlogScreen, child: const Text('BLOG')),
                    TextButton(
                        onPressed: setPortfolioScreen,
                        child: const Text('PORTFOLIO'))
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
