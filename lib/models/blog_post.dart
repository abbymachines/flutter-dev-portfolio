
class BlogPost {
  BlogPost({
    required this.date,
    this.blurb = '',
    required this.body,
    this.tags = const [],
    // required this.image,
  });

  final String date;
  final String blurb;
  final String body;
  final List<String> tags;
  // final Image image;
}
