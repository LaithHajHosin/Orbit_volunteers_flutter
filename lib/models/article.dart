class Article {
  final String title;
  final String content;
  final String imagePath;
  final String category;
  final int watchCount;
  final List<String> tags;
  final List<String> comments;

  Article({
    required this.title,
    required this.content,
    required this.imagePath,
    required this.category,
    this.watchCount = 0,
    this.tags = const [],
    this.comments = const [],
  });
}
