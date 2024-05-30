import 'dart:developer';

import 'package:era_developers_test_flutter/repositories/news/abstract_news_repository.dart';
import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final AbstractNewsRepository _newsRepository;
  NewsBloc(this._newsRepository)
      : super(const NewsState(
          featuredNews: [],
          latestNews: [],
          isLoading: false,
        )) {
    on<_Load>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      log(
        'News loading...',
        name: 'NewsBloc',
      );
      await Future.delayed(const Duration(seconds: 3));
      final newFeaturedNews = await _newsRepository.getFeaturedArticles();
      final newLatestNews = await _newsRepository.getLatestArticles();
      log(
        'News loaded -> Featured(${newFeaturedNews.length}), Latest(${newLatestNews.length})',
        name: 'NewsBloc',
      );
      emit(state.copyWith(
        featuredNews: newFeaturedNews,
        latestNews: newLatestNews,
        isLoading: false,
      ));
    });

    on<_MarkAllReaded>((event, emit) async {
      if (state.isLoading) return;
      List<Article> newFeaturesNews = [];
      List<Article> newLatestNews = [];
      for (final articles
          in IterableZip([state.featuredNews, state.latestNews])) {
        newFeaturesNews.add(articles[0].copyWith(readed: true));
        newLatestNews.add(articles[1].copyWith(readed: true));
      }
      emit(state.copyWith(
        featuredNews: newFeaturesNews,
        latestNews: newLatestNews,
      ));
    });

    on<_MarkOneReaded>((event, emit) async {
      final articleIndexInFeatures = state.featuredNews
          .indexWhere((article) => article.id == event.articleId);
      final articleIndexInLatest = state.latestNews
          .indexWhere((article) => article.id == event.articleId);
      List<Article> newFeaturesNews = List.from(state.featuredNews);
      List<Article> newLatestNews = List.from(state.latestNews);
      if (articleIndexInFeatures != -1) {
        newFeaturesNews[articleIndexInFeatures] =
            newFeaturesNews[articleIndexInFeatures].copyWith(readed: true);
      }
      if (articleIndexInLatest != -1) {
        newLatestNews[articleIndexInLatest] =
            newLatestNews[articleIndexInLatest].copyWith(readed: true);
      }
      emit(state.copyWith(
        featuredNews: newFeaturesNews,
        latestNews: newLatestNews,
      ));
    });
  }
}
