import 'package:freezed_annotation/freezed_annotation.dart';
part 'news_article.freezed.dart';

@freezed
class NewsArticle with _$NewsArticle {
  const factory NewsArticle({
    required String title,
    required String description,
    required String urlToImage,
    required String url,
  }) = _NewsArticle;
}