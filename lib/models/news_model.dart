class NewsModel {
  final String heading;
  final String? description;
  final String? image;

  NewsModel({
    required this.description,
    required this.heading,
    required this.image,
  });
  factory NewsModel.fromJson(json) {
    return NewsModel(
        description: json['description'],
        heading: json['title'],
        image: json['urlToImage']);
  }
}
