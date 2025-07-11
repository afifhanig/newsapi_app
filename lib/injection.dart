import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:news_project_1/data/datasources/news_remote_datasources.dart';
import 'package:news_project_1/domain/usecases/search_news.dart';
import 'package:news_project_1/presentation/blocs/news_cubit.dart';
import 'package:news_project_1/presentation/blocs/search_cubit.dart';
import 'domain/usecases/get_top_headlines.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Cubit
  sl.registerFactory(() => SearchCubit(sl()));
  sl.registerFactory(() => NewsCubit(sl()));

  // Usecases
  sl.registerLazySingleton(() => GetTopHeadlines(sl()));
  sl.registerLazySingleton(() => SearchNews(sl()));

  // Data sources
  sl.registerLazySingleton(() => NewsRemoteDataSource(sl()));

  // External
  final dio = Dio();
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
  sl.registerLazySingleton(() => dio);
}