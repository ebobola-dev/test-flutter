part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const NewsState._();

  const factory NewsState({
    required List<Article> latestNews,
    required List<Article> featuredNews,
    required bool isLoading,
  }) = _NewsState;
}
