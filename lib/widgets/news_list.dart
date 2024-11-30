import 'package:flutter/material.dart';
import 'package:newsapp2/models/news_model.dart';
import 'package:newsapp2/widgets/news_card.dart';

class NewsList extends StatelessWidget {
  NewsList({required this.model, super.key});

  final List<NewsModel> model;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: model.length,
        itemBuilder: (context, index) {
          return NewsCard(model: model[index]);
        });
  }
}
