import 'package:flutter/material.dart';
import 'package:newsapp2/widgets/news_list_builder.dart';

class TabsList extends StatelessWidget {
  const TabsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: TabBarView(
        children: [
          NewsListBuilder(
            category: 'general',
          ),
          NewsListBuilder(
            category: 'business',
          ),
          NewsListBuilder(
            category: 'sports',
          ),
          NewsListBuilder(
            category: 'health',
          ),
          NewsListBuilder(
            category: 'technology',
          ),
          NewsListBuilder(
            category: 'science',
          ),
          NewsListBuilder(
            category: 'entertainment',
          ),
        ],
      ),
    );
  }
}
