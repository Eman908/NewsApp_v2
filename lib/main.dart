import 'package:flutter/material.dart';
import 'package:newsapp2/screens/home_screen.dart';

void main() {
  runApp(const FlutterNews());
}

class FlutterNews extends StatelessWidget {
  const FlutterNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
