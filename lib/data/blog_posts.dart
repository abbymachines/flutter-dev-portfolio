import 'package:flutter/material.dart';
import 'package:flutter_dev_portfolio/models/blog_post.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

final blogPostData = [
  BlogPost(
      date: '2023.10.18',
      blurb: 'figured out MarkDown in Flutter :)',
      body:
          """How exciting! Now that I have my MarkdownBody widgets properly configured, I can begin my blog in earnest. So hello there. :) Hello world. How's it going? :)

This is my developer blog. This is a space for me to document the day-by-day process of building my developer portfolio, and other software development projects.

I'm still not entirely sure how to format paragraphs with the way my blog is set up. But I'm learning! Everything is coming along.
"""),
  BlogPost(
    date: '2023.10.17',
    blurb: 'please leave a message at the beep',
    body: 'believe it or not, **george** isnt at home',
  ),
  BlogPost(
    date: '2023.10.10',
    blurb: 'hi',
    body: 'hello world :) hello to you',
  ),
  BlogPost(
    date: 'anytime',
    body: 'lorum ipsums',
  ),
];
