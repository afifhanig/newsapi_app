// lib/presentation/blocs/news/search_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain/entities/news_article.dart';
import '../../../domain/usecases/search_news.dart';

class SearchState extends Equatable {
  final bool isLoading;
  final List<NewsArticle> articles;

  const SearchState({
    this.isLoading = false,
    this.articles = const [],
  });

  SearchState copyWith({
    bool? isLoading,
    List<NewsArticle>? articles,
  }) {
    return SearchState(
      isLoading: isLoading ?? this.isLoading,
      articles: articles ?? this.articles,
    );
  }

  @override
  List<Object?> get props => [isLoading, articles];
}

class SearchCubit extends Cubit<SearchState> {
  final SearchNews searchNewsUsecase;

  SearchCubit(this.searchNewsUsecase) : super(const SearchState());

  Future<void> searchNews(String keyword) async {
    emit(state.copyWith(isLoading: true));
    final result = await searchNewsUsecase.execute(keyword);
    emit(SearchState(isLoading: false, articles: result));
  }
}
