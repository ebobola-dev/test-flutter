part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.load() = _Load;
  const factory NewsEvent.markAllReaded() = _MarkAllReaded;
  const factory NewsEvent.markOneReaded({required String articleId}) =
      _MarkOneReaded;
}
