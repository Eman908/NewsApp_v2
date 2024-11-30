import 'package:flutter/material.dart';
import 'package:newsapp2/models/news_model.dart';
import 'package:newsapp2/services/news_service.dart';
import 'package:newsapp2/widgets/error_message.dart';
import 'package:newsapp2/widgets/news_list.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({required this.category, super.key});
  final String category;
  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  dynamic future;
  @override
  void initState() {
    future = NewsService().getNews(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsList(model: snapshot.data!);
          } else if (snapshot.hasError) {
            return const ErrorMessage(
              text: 'SORRY THERE WAS ERROR, TRY AGAIN',
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
