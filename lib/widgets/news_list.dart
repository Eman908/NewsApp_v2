import 'package:flutter/material.dart';
import 'package:newsapp2/models/news_model.dart';
import 'package:newsapp2/screens/news_screen.dart';
import 'package:newsapp2/widgets/news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({required this.model, super.key});

  final List<NewsModel> model;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: model.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewsScreen(
                      model: model[index],
                    ), // Passing the model to the new screen
                  ),
                );
              },
              child: NewsCard(model: model[index]));
        });
  }
}
