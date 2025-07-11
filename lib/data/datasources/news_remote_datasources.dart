import 'package:dio/dio.dart';

const apiKey = '8c90198d03624a78b8e6aefccc008cb1';

class NewsRemoteDataSource {
  final Dio dio;

  NewsRemoteDataSource(this.dio);

  Future<Response> fetchTopHeadlines({int page = 1}) async {
    return await dio.get('/top-headlines',
        queryParameters: {'country': 'us', 'page': page, 'apiKey': apiKey});
  }

  Future<Response> searchNews(String query, {int page = 1}) async {
    return await dio.get('/everything',
        queryParameters: {'q': query, 'page': page, 'apiKey': apiKey});
  }
}