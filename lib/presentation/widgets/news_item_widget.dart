import 'package:flutter/material.dart';
import '../../domain/entities/news_article.dart';

class NewsItemWidget extends StatelessWidget {
  final NewsArticle news;
  const NewsItemWidget({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: news.urlToImage.isNotEmpty
            ? Image.network(news.urlToImage, width: 100, fit: BoxFit.cover)
            : null,
        title: Text(news.title),
        subtitle: Text(news.description),
        onTap: () => {},
      ),
    );
  }
}