part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const NewsState._();

  const factory NewsState({
    required List<Article> latestNews,
    required List<Article> featuredNews,
    required bool isLoading,
  }) = _NewsState;

  bool get isEmpty => latestNews.isEmpty && featuredNews.isEmpty;

  bool articleIsReaded(String articleId) {
    final articleIndexInFeatures =
        featuredNews.indexWhere((article) => article.id == articleId);
    if (articleIndexInFeatures != -1) {
      return featuredNews[articleIndexInFeatures].readed;
    } else {
      final articleIndexInLatest =
          latestNews.indexWhere((article) => article.id == articleId);
      if (articleIndexInLatest != -1) {
        return latestNews[articleIndexInLatest].readed;
      }
    }
    return false;
  }
}
