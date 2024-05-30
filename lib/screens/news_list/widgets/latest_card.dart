import 'dart:developer';

import 'package:era_developers_test_flutter/bloc/news/news_bloc.dart';
import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:era_developers_test_flutter/utils/date_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatestCard extends StatelessWidget {
  final Article article;
  const LatestCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    const cardHeight = 103.0; // MediaQuery.of(context).size.height * 0.121;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: InkWell(
        onTap: () => log(
          'Tap on latest article (${article.title})',
          name: 'LatestCard',
        ),
        borderRadius: BorderRadius.circular(9.0),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
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
                            maxLines: 2,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          Text(
                            article.publicationDate.humanReadableString,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: Theme.of(context).dividerColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BlocBuilder<NewsBloc, NewsState>(
                builder: (context, state) {
                  if (!state.articleIsReaded(article.id)) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 6.0),
                        Container(
                          width: 6.0,
                          height: 6.0,
                          decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .dividerColor
                                  .withOpacity(.64),
                              shape: BoxShape.circle),
                        ),
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
