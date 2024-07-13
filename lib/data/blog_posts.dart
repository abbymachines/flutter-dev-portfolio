import 'package:flutter_dev_portfolio/models/blog_post.dart';

final blogPostData = [
  BlogPost(date: '2023.11.30', body: '''
I'd like to be a bit more consistent with my posting. I've been grinding away trying to get my developer website to a presentable state. I don't think I'm the entire way there yet, but I have successfully deployed AbbyCastillo.dev to github pages, and attached it to a domain.

Currently I have successfully implemented a scrolling list view populated with informational cards. A menu bar allows the user to switch between PORTFOLIO and BLOG views, which both make use of the same card widgets. These cards are labelled with text, and tapping the cards expands them to reveal more text formatted with markdown.

I find myself stuck at interesting places. It took me a whole day to figure out how to keep the cards open when they move away from the viewport. The issue is that a list view discards widgets when they are out of view, and re-renders them when they come back into view. When expansionTiles are first rendered, whether or not they are open is determined by the property 'initiallyExpanded', which is a boolean. The trick I learned was to keep a list that contains the indices of every card in the listview that is open. Then, every time you re-render the expansionTile, you check if that index is in the list; the resulting boolean from that checking operation (false if *not* in the list, true if *in* the list) gets passed into the initiallyExpanded property. 

Now I'd like to figure out how to keep cards open even when switching between the BLOG and PORTFOLIO views. I figure I need to lift state to the parent widget of both the blog and the portfolio views: lib/main.dart. But I'm not sure how to lift the index values, when those index values are derived from the context of the ListView builder inside of the ItemList widget.

There are also various little bugs I'm trying to work through with the markdown. Both the documentation and broader discussion of flutter_markdown is *scarce*, so I'm having trouble figuring it out. Today I have learned two important things about flutter_markdown:

1. Making hyperlinks clickable requires installing an additional module called url_launcher.
1. flutter_markdown uses [GitHub Flavored Markdown](https://github.github.com/gfm/).

Flutter is an interesting framework. It's very powerful and has a wonderful developer experience. It is not entirely mature however, at least not as mature as something like React. It is still cutting-edge, and as such, has a lot of rough edges.

'''),
  BlogPost(
      date: '2023.10.18',
      blurb: 'figured out MarkDown in Flutter :)',
      // image: Image.asset(
      //   Images.sproutling,
      //   width: 5,
      //   height: 5,
      // ),
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
