import 'package:flutter_dev_portfolio/models/blog_post.dart';

final blogPostData = [
  BlogPost(date: '2024.7.31: One Thousand Machines v1.1', body: '''
(excerpted from [abbymachines.art](https://abbymachines.art/A/OneThousandMachines_v1-1/)):

ONE THOUSAND MACHINES v1.1

**2022.1.12**. currently in r&d.

**2022.2.15**. I was supposed to write this on January. I’ve been falling behind on everything.

OK. Here’s the run-down. Once a day for one thousand days between 2014 and 2017, I edited and posted to a blog a new poem in a series called One Thousand Machines. These poems were made using the tool “That can be my next tweet!” by Monokai. TCBMNT is a web app that randomly generates a new tweet for you based on the tweets already on your Twitter account. Once a day, I clicked on this tool to generate a new tweet. I would then copy it to an empty Tumblr post and add spaces, line breaks, underscores, italics, bold text, and strikethroughs. No deletions. Those were all the changes I allowed myself to make. After editing, I then would hit the post button and publish it to the One Thousand Machines Tumblr blog.

In May of 2020, I deleted my Tumblr account, which included my personal blog from 2008-2020, as well as the entirety of One Thousand Machines. Some scraps remain here and there, but almost all of the poems are completely lost. I deleted my blog because I was having a manic episode. I don’t want to get into it right now. It was a bad time and I’m still traumatized from the events that led me to that manic episode.

Although I have lost the entirety of One Thousand Machines, one important piece of that project remains on my hard drives: my Twitter archive. This is the same corpus of text I used to make the original project. So my goal now is to recreate a new version of One Thousand Machines from that archive.

I plan to use Markov Chain text generation. Daniel Shiffman has a great video on doing Markov Chain text generation here: https://www.youtube.com/watch?v=eGFJ8vugIWA

The challenge will be to find some way to group different sets of tweets from the big corpus to form various corpuses corresponding to each of the 1,000 days. Each corpus will be unique, though there will be a lot of overlap between days. Each of these corpuses is the source text for each day’s Markov generation. Once I figure this part out, the goal is to automatically generate one thousand drafts for one thousand new poems. I will then edit and post them once a day for one thousand days.

I think this one will be called One Thousand Machines v1.1.

**2022.4.17**. I am writing out this small report in place of my February report, which I missed. I had bitten off entirely too much to chew this year in terms of projects and responsibilities. Recently I lightened my workload, so hopefully I'll have more time for other projects. Not much has been done for One Thousand Machines, except for the development of a simple chatbot that uses Markov chains. I think I'll demonstrate this program and explain some of how it works in my upcoming "March" report.

**2022.4.20**. This entry is in place of my March report. I was rooting through my files and found roughly 60 poems from One Thousand Machines (v1). These have been collected through various means, which I'll detail more later. For today I just wanted to share a few of the poems.

![](assets/one_thousand_machines/one-thousand-machines_63.png)

![](assets/one_thousand_machines/one-thousand-machines_147.jpg)

![](assets/one_thousand_machines/one-thousand-machines_476-1.png)

![](assets/one_thousand_machines/one-thousand-machines_515.png)

![](assets/one_thousand_machines/one-thousand-machines_745.png)

![](assets/one_thousand_machines/one-thousand-machines_1000.jpg)
          '''),
  BlogPost(
      date: '2024.7.14: rendering Flutter assets in GitHub pages', body: '''
I'm still here! I got busy for a little while... I did an internship at Cerebral! I'm still there, but finish up in two weeks. It's been great! I've learned a lot about Ruby on Rails. I'll have more to share about that when I'm done.

As far as this website is concerned... I figured out how to render images in my Github Pages deployment. For some reason, my images were rendering locally but not on the actual page online. I build the website out for browsers using `flutter build web`. I take the generated build files and dump them into a separate repo. Then I push those files to Github, where I can then deploy the site via Github Pages.

The reason images were not rendering in the deployed version is very simple. My images are contained within the path `/assets`, but when they are built for web the images are placed within `/assets/assets`. I moved the image files into their parent folder and voila, they rendered! How silly.

The icons for the items in my "Skills" card were also not rendering. For some reason, these image files were simply not being placed into my build files. Adding these images to the `/assets` folder also fixed the problem. Easy!

I was thinking I would like to automate some of the deployment process. There is a package for Flutter called `github_pages`, which builds the app for web in its own branch, which can then be deployed to Github Pages. I ran into a lot of problems while casually trying to implement the package into my project. Maybe I'll try again later! Who knows, maybe I'll even write my own deployment script so it works exactly how I want it to work.
'''),
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
""")
];
