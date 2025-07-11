import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio;

  ApiClient(this.dio) {
    dio.options.baseUrl = 'https://newsapi.org/v2';
    dio.interceptors.add(InterceptorsWrapper(
      onResponse: (response, handler) => handler.next(response),
      onError: (e, handler) {
        if (e.response?.statusCode == 401) {
          // handle unauthorized
        }
        return handler.next(e);
      },
    ));
  }
}