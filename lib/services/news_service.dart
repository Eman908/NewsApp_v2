import 'package:dio/dio.dart';
import 'package:newsapp2/models/news_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<NewsModel>> getNews({required String category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?language=en&apiKey=f817f730a8b54e85a25d95fe6d036d30&category=$category');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<NewsModel> newsmodel = [];
    for (var element in articles) {
      NewsModel model = NewsModel.fromJson(element);
      newsmodel.add(model);
    }
    return newsmodel;
  }
}
