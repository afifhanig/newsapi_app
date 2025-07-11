import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project_1/injection.dart';
import 'package:news_project_1/presentation/blocs/search_cubit.dart';
import '../widgets/news_item_widget.dart';

class SearchPage extends StatefulWidget {
  final String keyword;
  const SearchPage({super.key, required this.keyword});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      _controller.text = widget.keyword;
      context.read<SearchCubit>().searchNews(widget.keyword);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Search News')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'Search something...',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      final newKeyword = _controller.text.trim();
                      if (newKeyword.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BlocProvider(
                                create: (_) => sl<SearchCubit>(),
                              child: SearchPage(keyword: newKeyword),
                            ),
                          ),
                        );
                      }
                    }
                  )
                ],
              ),
            ),
            Expanded(
            child: BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (state.articles.isEmpty) {
                  return const Center(child: Text('No results'));
                }

                return ListView.builder(
                  itemCount: state.articles.length,
                  itemBuilder: (context, index) =>
                      NewsItemWidget(news: state.articles[index]),
                );
              },
            ),
          ),
          ],
        ),
    );
  }
}