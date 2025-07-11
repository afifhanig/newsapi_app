import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/news_article.dart';
import '../../../domain/usecases/get_top_headlines.dart';
import 'package:equatable/equatable.dart';

class NewsState extends Equatable {
  final bool isLoading;
  final List<NewsArticle> articles;
  final int page;

  const NewsState({
    this.isLoading = false,
    this.articles = const [],
    this.page = 1,
  });

  NewsState copyWith({
    bool? isLoading,
    List<NewsArticle>? articles,
    int? page,
  }) {
    return NewsState(
      isLoading: isLoading ?? this.isLoading,
      articles: articles ?? this.articles,
      page: page ?? this.page,
    );
  }

  @override
  List<Object?> get props => [isLoading, articles, page];
}

class NewsCubit extends Cubit<NewsState> {
  final GetTopHeadlines getTopHeadlines;

  NewsCubit(this.getTopHeadlines) : super(const NewsState());

  Future<void> fetchTopNews({bool isRefresh = false}) async {
    if (state.isLoading) return;

    final nextPage = isRefresh ? 1 : state.page;

    emit(state.copyWith(isLoading: true));

    final news = await getTopHeadlines.execute(nextPage);

    final updatedArticles = isRefresh
        ? news
        : [...state.articles, ...news];

    emit(state.copyWith(
      isLoading: false,
      articles: updatedArticles,
      page: nextPage + 1,
    ));
  }
}