import 'package:era_developers_test_flutter/common_widgets/animated_switch_page.dart';
import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:era_developers_test_flutter/screens/news_view/news_view_screen.dart';
import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final Article article;
  const FeaturedCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 28.0),
      child: InkWell(
        onTap: () => animatedSwitchPage(
          context,
          NewsViewScreen(article: article),
        ),
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: const [
              BoxShadow(
                color: Color(0x40000000),
                offset: Offset(4, 4),
                blurRadius: 20.0,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned.fill(
                  child: Image.network(
                    article.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned.fill(
                  child: ColoredBox(
                    color: Color(0xBF000000), // BF - 75% opacity
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: const Alignment(0.0, 0.75),
                    child: Text(
                      article.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
