// lib/domain/usecases/get_top_headlines.dart
import 'package:news_project_1/data/datasources/news_remote_datasources.dart';
import '../entities/news_article.dart';

class GetTopHeadlines {
  final NewsRemoteDataSource dataSource;

  GetTopHeadlines(this.dataSource);

  Future<List<NewsArticle>> execute(int page) async {
    final response = await dataSource.fetchTopHeadlines(page: page);

    final articles = (response.data['articles'] as List)
        .map((json) => NewsArticle(
              title: json['title'] ?? '',
              description: json['description'] ?? '',
              urlToImage: json['urlToImage'] ?? '',
              url: json['url'] ?? '',
            ))
        .toList();

    return articles;
  }
}
