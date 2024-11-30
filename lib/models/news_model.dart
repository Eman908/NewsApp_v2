class NewsModel {
  final String heading;
  final String? description;
  final String? image;
  final String? content;
  final String? author;
  final dynamic date;

  NewsModel(
      {required this.description,
      required this.heading,
      required this.image,
      required this.content,
      required this.author,
      required this.date});
  factory NewsModel.fromJson(json) {
    return NewsModel(
        description: json['description'],
        heading: json['title'],
        image: json['urlToImage'],
        content: json['content'],
        author: json['author'],
        date: json['publishedAt']);
  }
}
