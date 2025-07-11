import 'package:news_project_1/data/datasources/news_remote_datasources.dart';
import '../entities/news_article.dart';

class SearchNews {
  final NewsRemoteDataSource dataSource;

  SearchNews(this.dataSource);

  Future<List<NewsArticle>> execute(String query, {int page = 1}) async {
    final response = await dataSource.searchNews(query, page: page);

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