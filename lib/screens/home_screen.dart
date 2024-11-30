import 'package:flutter/material.dart';
import 'package:newsapp2/widgets/tabs.dart';
import 'package:newsapp2/widgets/tabs_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'News',
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(72),
            child: Tabs(),
          ),
        ),
        // body: NewsCard(),
        body: TabsList(),
      ),
    );
  }
}
