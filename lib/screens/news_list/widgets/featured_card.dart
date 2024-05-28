import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final Article article;
  const FeaturedCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Image.network(article.imageUrl),
        ],
      ),
    );
  }
}
