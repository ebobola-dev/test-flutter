import 'package:era_developers_test_flutter/bloc/news/news_bloc.dart';
import 'package:era_developers_test_flutter/screens/news_list/widgets/featured_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      buildWhen: (previous, current) =>
          previous.featuredNews != current.featuredNews,
      builder: (context, state) {
        return PageView(
          clipBehavior: Clip.none, // For shadows
          scrollDirection: Axis.horizontal,
          children: state.featuredNews
              .map((article) => FeaturedCard(
                    article: article,
                  ))
              .toList(),
        );
      },
    );
  }
}
