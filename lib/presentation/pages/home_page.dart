import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_project_1/injection.dart';
import 'package:news_project_1/presentation/blocs/news_cubit.dart';
import 'package:news_project_1/presentation/blocs/search_cubit.dart';
import 'package:news_project_1/presentation/pages/search_page.dart';
import '../widgets/news_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Top Headlines')),
      body: Column(
        children: [
          // 🔍 Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: const InputDecoration(
                      hintText: 'Search news...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    final keyword = _searchController.text.trim();
                    if (keyword.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlocProvider(
                            create: (_) => sl<SearchCubit>(),
                            child: SearchPage(keyword: keyword),
                          ),
                        ),
                      );
                    }
                  }
                )
              ],
            ),
          ),

          // 📰 News List
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async =>
                  context.read<NewsCubit>().fetchTopNews(isRefresh: true),
              child: BlocBuilder<NewsCubit, NewsState>(
                builder: (context, state) {
                   if (state.isLoading && state.articles.isEmpty) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (state.articles.isEmpty) {
                    return const Center(child: Text('No news available'));
                  }

                  return ListView.builder(
                    itemCount: state.articles.length,
                    itemBuilder: (context, index) =>
                        NewsItemWidget(news: state.articles[index]),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
