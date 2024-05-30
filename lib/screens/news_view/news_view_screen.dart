import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:flutter/material.dart';

class NewsViewScreen extends StatelessWidget {
  final Article article;
  const NewsViewScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
