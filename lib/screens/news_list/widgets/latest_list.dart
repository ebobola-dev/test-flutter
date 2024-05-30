import 'package:era_developers_test_flutter/bloc/news/news_bloc.dart';
import 'package:era_developers_test_flutter/screens/news_list/widgets/latest_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LatestList extends StatelessWidget {
  const LatestList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      buildWhen: (previous, current) =>
          previous.latestNews != current.latestNews,
      builder: (context, state) {
        return ListView.separated(
          shrinkWrap: true,
          itemCount: state.latestNews.length,
          itemBuilder: (context, index) => LatestCard(
            article: state.latestNews[index],
          ),
          separatorBuilder: (context, index) => const SizedBox(height: 20.0),
        );
      },
    );
  }
}
