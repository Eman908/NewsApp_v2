import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      isScrollable: true,
      indicatorColor: Colors.amber,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      labelPadding: EdgeInsets.symmetric(horizontal: 32),
      tabAlignment: TabAlignment.start,
      tabs: [
        Tab(
          text: 'General',
        ),
        Tab(
          text: 'Business',
        ),
        Tab(
          text: 'Sports',
        ),
        Tab(
          text: 'Health',
        ),
        Tab(
          text: 'Technology',
        ),
        Tab(
          text: 'Science',
        ),
        Tab(
          text: 'Entertainment',
        )
      ],
    );
  }
}
