import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:era_developers_test_flutter/theme/colors.dart';
import 'package:era_developers_test_flutter/utils/date_extension.dart';
import 'package:flutter/material.dart';

class LatestCard extends StatelessWidget {
  final Article article;
  const LatestCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    const cardHeight = 103.0; // MediaQuery.of(context).size.height * 0.121;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        height: cardHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(9.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1A000000),
              offset: Offset(4, 4),
              blurRadius: 20.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 8.0,
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: SizedBox(
                width: (cardHeight - 20.0 * 2) *
                    1.5, //? В дизайне длина картинки в 1.5 раза больше высоты, сохраняем пропорции
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.network(
                        article.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 23.0),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    article.publicationDate.humanReadableString,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: greyTextColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
