import 'dart:developer';

import 'package:era_developers_test_flutter/repositories/news/abstract_news_repository.dart';
import 'package:era_developers_test_flutter/repositories/news/models/article.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
        'News loaded',
        name: 'NewsBloc',
      );
      emit(state.copyWith(
        featuredNews: newFeaturedNews,
        latestNews: newLatestNews,
        isLoading: false,
      ));
    });
  }
}
